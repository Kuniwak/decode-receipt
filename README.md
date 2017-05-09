decode-receipt
==============

in-App Purchase Receipt Decoder for CLI.


Usage
-----

```console
$ cat path/to/receipt.base64
MIIVYgYJKoZIhvcNAQcCoIIVUzCCFU8CA...

$ ./bin/decode-receipt path/to/receipt.base64
{
  "application_version": "1",
  "original_application_version": "1.0",
  "opaque_value": "<BINARY>",
  "environment": "ProductionSandbox",
  "sha1_hash": "<BINARY>",
  "creation_date": "2017-05-09T02:35:53Z",
  "bundle_id": "com.example.app",
  "in_app": [
    {
      "expires_date": "",
      "cancellation_date": "",
      "quantity": 1,
      "web_order_line_item_id": 0,
      "transaction_id": "1000000296783156",
      "original_transaction_id": "1000000296783156",
      "purchase_date": "2017-05-08T05:03:20Z",
      "original_purchase_date": "2017-05-08T05:03:20Z",
      "product_id": "com.example.app.product1"
    },
    {
      "expires_date": "",
      "cancellation_date": "",
      "quantity": 1,
      "web_order_line_item_id": 0,
      "transaction_id": "1000000297032184",
      "original_transaction_id": "1000000297032184",
      "purchase_date": "2017-05-09T02:35:53Z",
      "original_purchase_date": "2017-05-09T02:35:53Z",
      "product_id": "com.example.app.product2"
    }
  ]
}
```


License
-------

MIT
