select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    {{cents_to_dollars('amount',3)}}, --should be enclosed in a qoutation
    created as created_at
from {{ source('stripe', 'payment') }}