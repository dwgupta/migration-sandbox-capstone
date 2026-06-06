-- Capstone migration mart: explicit columns + partition filter on event_date
SELECT
  payment_id,
  event_date,
  amount_usd
FROM stg_payments
WHERE event_date >= DATE('2024-01-01')