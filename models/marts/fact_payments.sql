-- Capstone migration mart: explicit columns + partition filter on event_date
SELECT
  payment_id,
  event_date,
  amount_usd,
  store_loc,
  store_id,
  store_zipcode,
FROM stg_payments
WHERE event_date >= DATE('2025-01-01')
