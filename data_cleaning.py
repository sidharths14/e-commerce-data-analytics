import pandas as pd

# ── Load Data ──────────────────────────────────────────────────────
df = pd.read_csv('/content/drive/MyDrive/retailo.csv', encoding='latin1')

# ── Split Orders vs Returns ────────────────────────────────────────
# Negative quantity = returns/cancellations, not bad data
df_orders = df[df['Quantity'] > 0]
df_returns = df[df['Quantity'] < 0]

# ── Handle Missing CustomerIDs ─────────────────────────────────────
# Rows without CustomerID can't be used for customer-level analysis
df_orders_filtered = df_orders[df_orders['CustomerID'].notna()].copy()
df_orders_unfiltered = df_orders[df_orders['CustomerID'].isna()].copy()

# ── Working Copy ───────────────────────────────────────────────────
df_new = df_orders_filtered.copy()

# ── Fix Data Types ─────────────────────────────────────────────────
df_new['InvoiceDate'] = pd.to_datetime(df_new['InvoiceDate'], format='%m/%d/%y %H:%M')
df_new['CustomerID'] = df_new['CustomerID'].astype(int)

# ── Verify ─────────────────────────────────────────────────────────
print(df_new.info())
print(df_new.isna().sum())

# ── Save Clean Data ────────────────────────────────────────────────
df_new.to_csv('/content/drive/MyDrive/clean_orders.csv', index=False)
print("Saved: clean_orders.csv")