#!/bin/bash

# API Specification for Interactive Blockchain dApp Dashboard

# API Endpoints

# 1. Login
GEPI_API_LOGIN="/api/login"
GEPI_API_LOGIN_METHOD="POST"
GEPI_API_LOGIN_REQ_BODY='{
    "username": "string",
    "password": "string"
}'
GEPI_API_LOGIN_RES_BODY='{
    "accessToken": "string",
    "refreshToken": "string"
}'

# 2. Get Dashboard Data
GEPI_API_DASHBOARD_DATA="/api/dashboard"
GEPI_API_DASHBOARD_METHOD="GET"
GEPI_API_DASHBOARD_REQ_HEADERS='{
    "Authorization": "Bearer <accessToken>"
}'
GEPI_API_DASHBOARD_RES_BODY='{
    "walletBalance": "number",
    "transactionHistory": [
        {
            "txId": "string",
            "txType": "string",
            "amount": "number",
            "timestamp": "integer"
        }
    ]
}'

# 3. Send Transaction
GEPI_API_SEND_TX="/api/transaction"
GEPI_API_SEND_TX_METHOD="POST"
GEPI_API_SEND_TX_REQ_BODY='{
    "amount": "number",
    "recipientAddress": "string"
}'
GEPI_API_SEND_TX_REQ_HEADERS='{
    "Authorization": "Bearer <accessToken>"
}'
GEPI_API_SEND_TX_RES_BODY='{
    "txId": "string"
}'

# 4. Get Transaction Status
GEPI_API_GET_TX_STATUS="/api/transaction/:txId"
GEPI_API_GET_TX_STATUS_METHOD="GET"
GEPI_API_GET_TX_STATUS_REQ_HEADERS='{
    "Authorization": "Bearer <accessToken>"
}'
GEPI_API_GET_TX_STATUS_RES_BODY='{
    "txStatus": "string"
}'

# Blockchain Connection
GEPI_BLOCKCHAIN_NODE="https://mainnet.infura.io/v3/YOUR_PROJECT_ID"
GEPI_BLOCKCHAIN_CHAIN_ID="1"

# Wallet Connection
GEPI_WALLET_ADDRESS="0x..."
GEPI_WALLET_PRIVATE_KEY="0x..."

echo "API Specification for Interactive Blockchain dApp Dashboard"
echo "Endpoints:"
echo "  - $GEPI_API_LOGIN"
echo "  - $GEPI_API_DASHBOARD_DATA"
echo "  - $GEPI_API_SEND_TX"
echo "  - $GEPI_API_GET_TX_STATUS"
echo "Blockchain Connection:"
echo "  - Node: $GEPI_BLOCKCHAIN_NODE"
echo "  - Chain ID: $GEPI_BLOCKCHAIN_CHAIN_ID"
echo "Wallet Connection:"
echo "  - Address: $GEPI_WALLET_ADDRESS"
echo "  - Private Key: $GEPI_WALLET_PRIVATE_KEY"