-- Capstone migration mart: explicit columns + partition filter on event_date
SELECT
  payment_id,
  event_date,
  amount_usd,
  store_loc,
  store_id,
  store_zipcode,
  agent_created_by_id
FROM stg_payments_tgt
WHERE event_date >= DATE('2025-01-01')
