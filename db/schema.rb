# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20191101061032) do

  create_table "QG_CC_APPLICABLE_TRANSACTIONS", id: false, force: true do |t|
    t.string   "CARD_NUMBER"
    t.integer  "TRANSACTION_ID",                                             null: false
    t.date     "RECORD_DATE"
    t.boolean  "IS_BILLED",                                                  null: false
    t.boolean  "HAS_EMI_SCHEDULE",                                           null: false
    t.boolean  "HAS_EMI_OPTION",                                             null: false
    t.string   "TRANSACTION_TYPE",      limit: 200
    t.string   "CURRENCY_CODE",         limit: 3
    t.decimal  "AMOUNT",                            precision: 18, scale: 2
    t.string   "NARRATIVE"
    t.string   "LOAN_STATUS"
    t.string   "PLAN_ID"
    t.string   "PLAN_CURRENCY",         limit: 3,                            null: false
    t.string   "PLAN_NAME"
    t.decimal  "RATE_OF_INTEREST",                  precision: 18, scale: 2
    t.decimal  "PROCESSING_FEE",                    precision: 18, scale: 2
    t.integer  "PLAN_TENURE"
    t.datetime "APPLIED_ON"
    t.string   "APPLICATION_REF_NO"
    t.decimal  "LOAN_PROCESSING_FEE",               precision: 18, scale: 2
    t.integer  "LOAN_TERM"
    t.decimal  "LOAN_RATE_OF_INTEREST",             precision: 18, scale: 2
    t.string   "DECISION"
    t.datetime "DECIDED_ON"
    t.string   "REJECT_REASON",         limit: 1
    t.decimal  "EMI_VALUE",                         precision: 18, scale: 2
    t.decimal  "TOTAL_INTEREST",                    precision: 18, scale: 2
    t.date     "FIRST_EMI_ON"
    t.date     "LAST_EMI_ON"
  end

  create_table "QG_SF_PURGE_AUDIT_LOG", primary_key: "ID", force: true do |t|
    t.integer  "BATCH_SIZE"
    t.date     "PURGE_TILL"
    t.integer  "ROW_COUNT"
    t.datetime "STARTED_AT"
    t.datetime "UPDATED_AT"
    t.datetime "ENDED_AT"
    t.integer  "COMMIT_COUNT"
  end

  create_table "TBL_CREDITCARD_MIS", id: false, force: true do |t|
    t.date    "DATE"
    t.integer "Total_rbl"
    t.integer "New_rbl"
    t.integer "Exist_rbl"
    t.integer "Total_bfl"
    t.integer "New_bfl"
    t.integer "Exist_bfl"
    t.integer "Total_bfl_rbl"
    t.integer "Cumulative"
  end

  create_table "VPLUS_UPLOADS", primary_key: "ID", force: true do |t|
    t.string "FILE_NAME"
    t.date   "FOR_DATE"
    t.date   "CREATED_AT"
    t.date   "UPDATED_AT"
  end

  add_index "VPLUS_UPLOADS", ["FILE_NAME", "FOR_DATE"], name: "VPLUS_UPLOADS_ID_IDX"

  create_table "a1pt_temp", id: false, force: true do |t|
    t.string "account"
    t.string "post_date"
    t.string "txn_date"
    t.string "card_nbr"
    t.string "amount"
    t.string "authcode"
    t.string "ref_nbr"
  end

  create_table "account_profiles", force: true do |t|
    t.string   "account_no"
    t.string   "customer_no"
    t.string   "sol_id"
    t.string   "account_status"
    t.date     "date_closed"
    t.decimal  "credit_limit",                       precision: 18, scale: 2
    t.decimal  "temporary_limit",                    precision: 18, scale: 2
    t.integer  "billing_cycle"
    t.integer  "pd_cycle"
    t.string   "block_code1"
    t.string   "block_code2"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                                                null: false
    t.datetime "updated_at",                                                                null: false
    t.date     "dt_nxt_stm"
    t.decimal  "pmt_tot_am",                         precision: 18, scale: 2
    t.decimal  "pmt_lst_am",                         precision: 18, scale: 2
    t.date     "dte_lst_pm"
    t.date     "d_last_statement"
    t.decimal  "n_last_statement_balance",           precision: 18, scale: 2
    t.decimal  "curr_bal",                           precision: 18, scale: 2
    t.string   "cash_withdrawal_flg"
    t.date     "transferred_to_on"
    t.date     "transferred_from_on"
    t.string   "account_logo"
    t.string   "transferred_to"
    t.string   "transferred_from"
    t.integer  "reward_points_balance",    limit: 8,                          default: 0
    t.string   "account_type",                                                default: "T"
    t.decimal  "total_amount_due",                   precision: 18, scale: 2, default: 0.0
    t.decimal  "minimum_amount_due",                 precision: 18, scale: 2, default: 0.0
    t.date     "payment_due_date"
    t.date     "statement_date"
    t.integer  "number_unbilled_debits"
    t.decimal  "total_unbilled_debits",              precision: 18, scale: 2
    t.integer  "number_unbilled_credits"
    t.decimal  "total_unbilled_credits",             precision: 18, scale: 2
    t.decimal  "available_credit_limit",             precision: 18, scale: 2
    t.decimal  "available_cash_limit",               precision: 18, scale: 2
    t.integer  "pmt_ctd",                                                     default: 0
    t.decimal  "expiry_reward_points",               precision: 18, scale: 2, default: 0.0
    t.date     "expiry_date"
  end

  add_index "account_profiles", ["account_no"], name: "index_account_profiles_on_account_no"
  add_index "account_profiles", ["account_status"], name: "<Name of Missing Index, sysname,>"
  add_index "account_profiles", ["customer_no"], name: "index_account_profiles_on_customer_no"

  create_table "account_profiles_11122017", force: true do |t|
    t.string   "account_no"
    t.string   "customer_no"
    t.string   "sol_id"
    t.string   "account_status"
    t.date     "date_closed"
    t.decimal  "credit_limit",                       precision: 18, scale: 2
    t.decimal  "temporary_limit",                    precision: 18, scale: 2
    t.integer  "billing_cycle"
    t.integer  "pd_cycle"
    t.string   "block_code1"
    t.string   "block_code2"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.date     "dt_nxt_stm"
    t.decimal  "pmt_tot_am",                         precision: 18, scale: 2
    t.decimal  "pmt_lst_am",                         precision: 18, scale: 2
    t.date     "dte_lst_pm"
    t.date     "d_last_statement"
    t.decimal  "n_last_statement_balance",           precision: 18, scale: 2
    t.decimal  "curr_bal",                           precision: 18, scale: 2
    t.string   "cash_withdrawal_flg"
    t.date     "transferred_to_on"
    t.date     "transferred_from_on"
    t.string   "account_logo"
    t.string   "transferred_to"
    t.string   "transferred_from"
    t.integer  "reward_points_balance",    limit: 8
    t.string   "account_type"
    t.decimal  "total_amount_due",                   precision: 18, scale: 2
    t.decimal  "minimum_amount_due",                 precision: 18, scale: 2
    t.date     "payment_due_date"
    t.date     "statement_date"
    t.integer  "number_unbilled_debits"
    t.decimal  "total_unbilled_debits",              precision: 18, scale: 2
    t.integer  "number_unbilled_credits"
    t.decimal  "total_unbilled_credits",             precision: 18, scale: 2
    t.decimal  "available_credit_limit",             precision: 18, scale: 2
    t.decimal  "available_cash_limit",               precision: 18, scale: 2
    t.integer  "pmt_ctd"
    t.decimal  "expiry_reward_points",               precision: 18, scale: 2
    t.date     "expiry_date"
  end

  create_table "account_profiles_20150604", force: true do |t|
    t.string   "account_no"
    t.string   "customer_no"
    t.string   "sol_id"
    t.string   "account_status"
    t.date     "date_closed"
    t.decimal  "credit_limit",                       precision: 18, scale: 2
    t.decimal  "temporary_limit",                    precision: 18, scale: 2
    t.integer  "billing_cycle"
    t.integer  "pd_cycle"
    t.string   "block_code1"
    t.string   "block_code2"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.date     "dt_nxt_stm"
    t.decimal  "pmt_tot_am",                         precision: 18, scale: 2
    t.decimal  "pmt_lst_am",                         precision: 18, scale: 2
    t.date     "dte_lst_pm"
    t.date     "d_last_statement"
    t.decimal  "n_last_statement_balance",           precision: 18, scale: 2
    t.decimal  "curr_bal",                           precision: 18, scale: 2
    t.string   "cash_withdrawal_flg"
    t.date     "transferred_to_on"
    t.date     "transferred_from_on"
    t.string   "account_logo"
    t.string   "transferred_to"
    t.string   "transferred_from"
    t.integer  "reward_points_balance",    limit: 8
    t.string   "account_type"
    t.decimal  "total_amount_due",                   precision: 18, scale: 2
    t.decimal  "minimum_amount_due",                 precision: 18, scale: 2
    t.date     "payment_due_date"
    t.date     "statement_date"
    t.integer  "number_unbilled_debits"
    t.decimal  "total_unbilled_debits",              precision: 18, scale: 2
    t.integer  "number_unbilled_credits"
    t.decimal  "total_unbilled_credits",             precision: 18, scale: 2
    t.decimal  "available_credit_limit",             precision: 18, scale: 2
    t.decimal  "available_cash_limit",               precision: 18, scale: 2
  end

  create_table "account_profiles_20150604_sduat", force: true do |t|
    t.string   "account_no"
    t.string   "customer_no"
    t.string   "sol_id"
    t.string   "account_status"
    t.date     "date_closed"
    t.decimal  "credit_limit",                       precision: 18, scale: 2
    t.decimal  "temporary_limit",                    precision: 18, scale: 2
    t.integer  "billing_cycle"
    t.integer  "pd_cycle"
    t.string   "block_code1"
    t.string   "block_code2"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.date     "dt_nxt_stm"
    t.decimal  "pmt_tot_am",                         precision: 18, scale: 2
    t.decimal  "pmt_lst_am",                         precision: 18, scale: 2
    t.date     "dte_lst_pm"
    t.date     "d_last_statement"
    t.decimal  "n_last_statement_balance",           precision: 18, scale: 2
    t.decimal  "curr_bal",                           precision: 18, scale: 2
    t.string   "cash_withdrawal_flg"
    t.date     "transferred_to_on"
    t.date     "transferred_from_on"
    t.string   "account_logo"
    t.string   "transferred_to"
    t.string   "transferred_from"
    t.integer  "reward_points_balance",    limit: 8
    t.string   "account_type"
    t.decimal  "total_amount_due",                   precision: 18, scale: 2
    t.decimal  "minimum_amount_due",                 precision: 18, scale: 2
    t.date     "payment_due_date"
    t.date     "statement_date"
    t.integer  "number_unbilled_debits"
    t.decimal  "total_unbilled_debits",              precision: 18, scale: 2
    t.integer  "number_unbilled_credits"
    t.decimal  "total_unbilled_credits",             precision: 18, scale: 2
    t.decimal  "available_credit_limit",             precision: 18, scale: 2
    t.decimal  "available_cash_limit",               precision: 18, scale: 2
  end

  create_table "account_profiles_27042018", force: true do |t|
    t.string   "account_no"
    t.string   "customer_no"
    t.string   "sol_id"
    t.string   "account_status"
    t.date     "date_closed"
    t.decimal  "credit_limit",                       precision: 18, scale: 2
    t.decimal  "temporary_limit",                    precision: 18, scale: 2
    t.integer  "billing_cycle"
    t.integer  "pd_cycle"
    t.string   "block_code1"
    t.string   "block_code2"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.date     "dt_nxt_stm"
    t.decimal  "pmt_tot_am",                         precision: 18, scale: 2
    t.decimal  "pmt_lst_am",                         precision: 18, scale: 2
    t.date     "dte_lst_pm"
    t.date     "d_last_statement"
    t.decimal  "n_last_statement_balance",           precision: 18, scale: 2
    t.decimal  "curr_bal",                           precision: 18, scale: 2
    t.string   "cash_withdrawal_flg"
    t.date     "transferred_to_on"
    t.date     "transferred_from_on"
    t.string   "account_logo"
    t.string   "transferred_to"
    t.string   "transferred_from"
    t.integer  "reward_points_balance",    limit: 8
    t.string   "account_type"
    t.decimal  "total_amount_due",                   precision: 18, scale: 2
    t.decimal  "minimum_amount_due",                 precision: 18, scale: 2
    t.date     "payment_due_date"
    t.date     "statement_date"
    t.integer  "number_unbilled_debits"
    t.decimal  "total_unbilled_debits",              precision: 18, scale: 2
    t.integer  "number_unbilled_credits"
    t.decimal  "total_unbilled_credits",             precision: 18, scale: 2
    t.decimal  "available_credit_limit",             precision: 18, scale: 2
    t.decimal  "available_cash_limit",               precision: 18, scale: 2
    t.integer  "pmt_ctd"
    t.decimal  "expiry_reward_points",               precision: 18, scale: 2
    t.date     "expiry_date"
  end

  create_table "account_profiles_arch", force: true do |t|
    t.string   "account_no"
    t.string   "customer_no"
    t.string   "sol_id"
    t.string   "account_status"
    t.date     "date_closed"
    t.decimal  "credit_limit",                       precision: 18, scale: 2
    t.decimal  "temporary_limit",                    precision: 18, scale: 2
    t.integer  "billing_cycle"
    t.integer  "pd_cycle"
    t.string   "block_code1"
    t.string   "block_code2"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.date     "dt_nxt_stm"
    t.decimal  "pmt_tot_am",                         precision: 18, scale: 2
    t.decimal  "pmt_lst_am",                         precision: 18, scale: 2
    t.date     "dte_lst_pm"
    t.date     "d_last_statement"
    t.decimal  "n_last_statement_balance",           precision: 18, scale: 2
    t.decimal  "curr_bal",                           precision: 18, scale: 2
    t.string   "cash_withdrawal_flg"
    t.date     "transferred_to_on"
    t.date     "transferred_from_on"
    t.string   "account_logo"
    t.string   "transferred_to"
    t.string   "transferred_from"
    t.integer  "reward_points_balance",    limit: 8
    t.string   "account_type"
    t.decimal  "total_amount_due",                   precision: 18, scale: 2
    t.decimal  "minimum_amount_due",                 precision: 18, scale: 2
    t.date     "payment_due_date"
    t.date     "statement_date"
    t.integer  "number_unbilled_debits"
    t.decimal  "total_unbilled_debits",              precision: 18, scale: 2
    t.integer  "number_unbilled_credits"
    t.decimal  "total_unbilled_credits",             precision: 18, scale: 2
    t.decimal  "available_credit_limit",             precision: 18, scale: 2
    t.decimal  "available_cash_limit",               precision: 18, scale: 2
    t.integer  "pmt_ctd"
    t.decimal  "expiry_reward_points",               precision: 18, scale: 2
    t.date     "expiry_date"
  end

  create_table "active_admin_comments", force: true do |t|
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_admin_notes_on_resource_type_and_resource_id"

  create_table "activities", force: true do |t|
    t.integer  "user_id"
    t.integer  "ticket_id"
    t.string   "old_state"
    t.string   "action"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "new_state"
    t.text     "old_ticket"
    t.text     "new_ticket"
    t.string   "new_comment"
    t.integer  "attachment_id"
    t.string   "new_document_state"
    t.string   "old_document_state"
    t.integer  "document_id"
    t.integer  "ticket_link_id"
  end

  add_index "activities", ["action"], name: "index_activities_on_action"
  add_index "activities", ["ticket_id"], name: "index_activities_on_ticket_id"
  add_index "activities", ["user_id"], name: "index_activities_on_user_id"

  create_table "activity_items", force: true do |t|
    t.integer  "activity_id"
    t.integer  "ticket_field_id"
    t.string   "ticket_field"
    t.string   "old_value"
    t.string   "new_value"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "action"
  end

  add_index "activity_items", ["action"], name: "index_activity_items_on_action"
  add_index "activity_items", ["activity_id"], name: "index_activity_items_on_activity_id"

  create_table "activity_text_items", force: true do |t|
    t.text     "old_value"
    t.text     "new_value"
    t.integer  "activity_item_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "activity_text_items", ["activity_item_id"], name: "index_activity_text_items_on_activity_item_id"

  create_table "admin_roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "admin_roles", ["name", "resource_type", "resource_id"], name: "index_admin_roles_on_name_and_resource_type_and_resource_id"
  add_index "admin_roles", ["name"], name: "index_admin_roles_on_name"

  create_table "admin_users", force: true do |t|
    t.string   "email",                             default: "",    null: false
    t.string   "encrypted_password",                default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "username"
    t.string   "unique_session_id",      limit: 20
    t.boolean  "inactive",                          default: false
    t.integer  "failed_attempts",                   default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true

  create_table "admin_users_admin_roles", id: false, force: true do |t|
    t.integer "admin_user_id"
    t.integer "admin_role_id"
  end

  add_index "admin_users_admin_roles", ["admin_user_id", "admin_role_id"], name: "index_admin_users_admin_roles_on_admin_user_id_and_admin_role_id"

  create_table "admin_versions", force: true do |t|
    t.string   "item_type",      null: false
    t.integer  "item_id",        null: false
    t.string   "event",          null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "object_changes"
  end

  add_index "admin_versions", ["item_type", "item_id"], name: "index_admin_versions_on_item_type_and_item_id"

  create_table "api_keys", force: true do |t|
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ar_internal_metadata", primary_key: "key", force: true do |t|
    t.string   "value",      limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "attachments", force: true do |t|
    t.string   "note"
    t.string   "file"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "user_id"
    t.string   "content_type"
    t.string   "access_token"
    t.boolean  "disabled",        default: false
    t.string   "ticket_state"
  end

  add_index "attachments", ["attachable_id"], name: "index_attachments_on_attachable_id"

  create_table "campaigns", force: true do |t|
    t.string   "cif",                  limit: 16,   null: false
    t.string   "account_number",       limit: 16,   null: false
    t.string   "mobile_number",        limit: 15
    t.string   "customer_name",        limit: 50,   null: false
    t.string   "campaign_name",        limit: 50
    t.date     "campaign_expiry_date"
    t.string   "description",          limit: 1000, null: false
    t.string   "customer_segment",     limit: 50
    t.string   "dnd_flag",             limit: 10
    t.string   "product_type",         limit: 50
    t.string   "branch_name",          limit: 50
    t.datetime "created_at",                        null: false
  end

  add_index "campaigns", ["account_number"], name: "campaigns_02"
  add_index "campaigns", ["cif"], name: "campaigns_01"
  add_index "campaigns", ["mobile_number"], name: "campaigns_03"

  create_table "card_limit_audit_records", force: true do |t|
    t.integer  "card_limit_id",                                                    null: false
    t.datetime "created_at",                                                       null: false
    t.string   "txn_kind",         limit: 20
    t.string   "cust_or_acct",     limit: 40
    t.decimal  "limit_amt_or_pct",            precision: 18, scale: 2
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "lock_version",                                         default: 0, null: false
    t.string   "label",            limit: 50
  end

  create_table "card_limits", force: true do |t|
    t.string   "txn_kind",         limit: 20
    t.string   "cust_or_acct",     limit: 40
    t.decimal  "limit_amt_or_pct",            precision: 18, scale: 2
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lock_version",                                         default: 0, null: false
    t.string   "label",            limit: 50
  end

  create_table "card_loan_details", force: true do |t|
    t.string   "account_no"
    t.integer  "card_loan_id"
    t.integer  "installment"
    t.date     "installment_date"
    t.decimal  "rate",              precision: 18, scale: 2
    t.decimal  "emi_amount",        precision: 18, scale: 2
    t.decimal  "principal_amount",  precision: 18, scale: 2
    t.decimal  "interest_amount",   precision: 18, scale: 2
    t.decimal  "principal_balance", precision: 18, scale: 2
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.decimal  "emi_proc_fee",      precision: 18, scale: 2
    t.integer  "txn_id"
  end

  add_index "card_loan_details", ["account_no", "txn_id"], name: "card_loan_details_02"
  add_index "card_loan_details", ["card_loan_id"], name: "card_loan_details_01"

  create_table "card_loans", force: true do |t|
    t.string   "creditcard_no"
    t.string   "account_no"
    t.integer  "transaction_id"
    t.string   "state"
    t.string   "emi_plan_id"
    t.string   "transaction_ref_no"
    t.string   "transaction_type"
    t.date     "first_installment_date"
    t.date     "last_installment_date"
    t.integer  "term"
    t.decimal  "rate",                   precision: 18, scale: 2
    t.decimal  "emi_amount",             precision: 18, scale: 2
    t.decimal  "principal_amount",       precision: 18, scale: 2
    t.decimal  "interest_amount",        precision: 18, scale: 2
    t.decimal  "processing_fee",         precision: 18, scale: 2
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "access_token"
    t.date     "posting_date"
    t.string   "authorisation_code"
    t.date     "transaction_date"
    t.datetime "associated_at"
    t.integer  "channel_id"
  end

  add_index "card_loans", ["access_token"], name: "card_loans_07", unique: true
  add_index "card_loans", ["channel_id"], name: "card_loans_03"
  add_index "card_loans", ["creditcard_no", "transaction_date", "state"], name: "card_loans_05"
  add_index "card_loans", ["emi_plan_id"], name: "card_loans_02"
  add_index "card_loans", ["posting_date", "state"], name: "card_loans_06"
  add_index "card_loans", ["transaction_date", "principal_amount", "authorisation_code", "account_no", "state"], name: "card_loans_08"
  add_index "card_loans", ["transaction_id"], name: "idx_tran_id"
  add_index "card_loans", ["updated_at"], name: "card_loans_04"

  create_table "card_transactions", force: true do |t|
    t.string   "org"
    t.string   "account"
    t.string   "logo"
    t.string   "txn_type"
    t.date     "txn_date"
    t.integer  "txn_code"
    t.decimal  "amount",                   precision: 18, scale: 2
    t.string   "authcode"
    t.string   "mt_si_org"
    t.string   "mt_si_nbr"
    t.string   "plan_no"
    t.string   "ref_nbr"
    t.string   "merchant"
    t.string   "city"
    t.string   "rpt_desc"
    t.string   "card_nbr"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "loan_status"
    t.string   "mt_type",      limit: 200
    t.date     "posting_date"
    t.integer  "cat_code"
  end

  add_index "card_transactions", ["account", "txn_date", "amount", "authcode"], name: "card_transactions_01"
  add_index "card_transactions", ["card_nbr", "txn_code", "posting_date"], name: "card_transaction_IDX"
  add_index "card_transactions", ["card_nbr"], name: "card_transactions_02"
  add_index "card_transactions", ["loan_status"], name: "card_transactions_03"

  create_table "card_transactions_11122017", force: true do |t|
    t.string   "org"
    t.string   "account"
    t.string   "logo"
    t.string   "txn_type"
    t.date     "txn_date"
    t.integer  "txn_code"
    t.decimal  "amount",                   precision: 18, scale: 2
    t.string   "authcode"
    t.string   "mt_si_org"
    t.string   "mt_si_nbr"
    t.string   "plan_no"
    t.string   "ref_nbr"
    t.string   "merchant"
    t.string   "city"
    t.string   "rpt_desc"
    t.string   "card_nbr"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "loan_status"
    t.string   "mt_type",      limit: 200
    t.date     "posting_date"
    t.integer  "cat_code"
  end

  create_table "card_transactions_27042018", force: true do |t|
    t.string   "org"
    t.string   "account"
    t.string   "logo"
    t.string   "txn_type"
    t.date     "txn_date"
    t.integer  "txn_code"
    t.decimal  "amount",                   precision: 18, scale: 2
    t.string   "authcode"
    t.string   "mt_si_org"
    t.string   "mt_si_nbr"
    t.string   "plan_no"
    t.string   "ref_nbr"
    t.string   "merchant"
    t.string   "city"
    t.string   "rpt_desc"
    t.string   "card_nbr"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "loan_status"
    t.string   "mt_type",      limit: 200
    t.date     "posting_date"
    t.integer  "cat_code"
  end

  create_table "card_validations", force: true do |t|
    t.string   "validation_type"
    t.string   "validation_code"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "card_validations_20171211", force: true do |t|
    t.string   "validation_type"
    t.string   "validation_code"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "card_validations_20180428", force: true do |t|
    t.string   "validation_type"
    t.string   "validation_code"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "card_validations_Backup28Apr17", force: true do |t|
    t.string   "validation_type"
    t.string   "validation_code"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cc_api_capabilities", force: true do |t|
    t.string  "service_name",          null: false
    t.string  "operation_name",        null: false
    t.boolean "supports_otp",          null: false
    t.boolean "supports_registration", null: false
    t.string  "emi_plan_kind",         null: false
  end

  add_index "cc_api_capabilities", ["service_name", "operation_name"], name: "cc_api_capabilities_1", unique: true

  create_table "cc_banks", force: true do |t|
    t.string "name",                 null: false
    t.string "ifsc_code", limit: 20, null: false
  end

  add_index "cc_banks", ["ifsc_code"], name: "cc_banks_2", unique: true
  add_index "cc_banks", ["name"], name: "cc_banks_1", unique: true

  create_table "channel_api_settings", force: true do |t|
    t.integer  "channel_id",                         null: false
    t.string   "service_name",                       null: false
    t.string   "operation_name",                     null: false
    t.boolean  "allowed",            default: false, null: false
    t.boolean  "needs_otp",          default: false, null: false
    t.boolean  "needs_registration", default: false, null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "lock_version",       default: 0,     null: false
  end

  add_index "channel_api_settings", ["channel_id", "service_name", "operation_name"], name: "channel_api_settings_1", unique: true

  create_table "channels", force: true do |t|
    t.string   "name"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "literal"
    t.boolean  "disabled",     default: false
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "channel_type"
    t.string   "custid_kind"
  end

  create_table "channels_Backup28Apr17", force: true do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "literal"
    t.boolean  "disabled"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "channel_type"
    t.string   "custid_kind"
  end

  create_table "checklist_items", force: true do |t|
    t.integer  "ticket_checklist_id",                             null: false
    t.string   "item",                limit: 100
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "position"
    t.boolean  "disabled",                        default: false
  end

  add_index "checklist_items", ["item", "ticket_checklist_id"], name: "checklist_items_1", unique: true

  create_table "comments", force: true do |t|
    t.string   "title",            limit: 50, default: ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "ticket_state"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type"], name: "index_comments_on_commentable_type"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "computed_reports", force: true do |t|
    t.string   "report_name"
    t.string   "report_note"
    t.string   "output_format"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "computed_reports_tat_reports", force: true do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_cards", force: true do |t|
    t.string   "credit_card_no"
    t.string   "account_no"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "card_expiry_date"
    t.string   "card_flag"
    t.string   "emboss1"
    t.string   "emboss2"
    t.string   "block_code"
    t.date     "block_date"
  end

  add_index "credit_cards", ["account_no"], name: "CREDIT_CARDS_CIPL_Idx"
  add_index "credit_cards", ["credit_card_no", "account_no"], name: "index_credit_cards_on_credit_card_no_and_account_no", unique: true

  create_table "credit_cards_11122017", force: true do |t|
    t.string   "credit_card_no"
    t.string   "account_no"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "card_expiry_date"
    t.string   "card_flag"
    t.string   "emboss1"
    t.string   "emboss2"
    t.string   "block_code"
    t.date     "block_date"
  end

  create_table "credit_cards_27042018", force: true do |t|
    t.string   "credit_card_no"
    t.string   "account_no"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "card_expiry_date"
    t.string   "card_flag"
    t.string   "emboss1"
    t.string   "emboss2"
    t.string   "block_code"
    t.date     "block_date"
  end

  create_table "customer_account_maskings", force: true do |t|
    t.string   "condition_field"
    t.string   "condition_field_value"
    t.string   "masking_field"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "masking",               limit: 50
  end

  create_table "customer_profiles", force: true do |t|
    t.string   "customer_no"
    t.string   "cust_name"
    t.string   "email"
    t.string   "mobile_no"
    t.string   "pan_no"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pin_code"
    t.date     "date_of_birth"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "mobile2"
    t.string   "moth_name"
    t.string   "email_2"
    t.string   "emp_ph2"
  end

  add_index "customer_profiles", ["customer_no"], name: "<Name of Missing Index, sysname,>"
  add_index "customer_profiles", ["customer_no"], name: "index_customer_profiles_on_customer_no", unique: true

  create_table "customer_profiles_11122017", force: true do |t|
    t.string   "customer_no"
    t.string   "cust_name"
    t.string   "email"
    t.string   "mobile_no"
    t.string   "pan_no"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pin_code"
    t.date     "date_of_birth"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "mobile2"
    t.string   "moth_name"
    t.string   "email_2"
    t.string   "emp_ph2"
  end

  create_table "customer_profiles_201060822", force: true do |t|
    t.string   "customer_no"
    t.string   "cust_name"
    t.string   "email"
    t.string   "mobile_no"
    t.string   "pan_no"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pin_code"
    t.date     "date_of_birth"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "mobile2"
    t.string   "moth_name"
    t.string   "email_2"
    t.string   "emp_ph2"
  end

  create_table "customer_profiles_27042018", force: true do |t|
    t.string   "customer_no"
    t.string   "cust_name"
    t.string   "email"
    t.string   "mobile_no"
    t.string   "pan_no"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pin_code"
    t.date     "date_of_birth"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "mobile2"
    t.string   "moth_name"
    t.string   "email_2"
    t.string   "emp_ph2"
  end

  create_table "delayed_job_results", force: true do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.string   "state"
    t.string   "report_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.datetime "executed_at"
    t.string   "records_count"
  end

  add_index "delayed_job_results", ["job_id"], name: "delayed_job_results_01"
  add_index "delayed_job_results", ["state", "report_type"], name: "delayed_job_results_03"
  add_index "delayed_job_results", ["user_id"], name: "delayed_job_results_02"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "delayed_jobs", ["failed_at", "queue"], name: "delayed_jobs_01"
  add_index "delayed_jobs", ["failed_at"], name: "delayed_jobs_02"
  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "deleted_ticket_values", force: true do |t|
    t.integer  "ticket_value_id"
    t.string   "value"
    t.integer  "ticket_id"
    t.integer  "ticket_field_id"
    t.datetime "value_created_at"
    t.datetime "value_updated_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "deleted_ticket_values", ["ticket_field_id"], name: "index_deleted_ticket_values_on_ticket_field_id"
  add_index "deleted_ticket_values", ["ticket_id"], name: "index_deleted_ticket_values_on_ticket_id"

  create_table "department_locations", force: true do |t|
    t.integer  "department_id"
    t.integer  "location_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "staff_sms_flag", default: false
    t.boolean  "disabled",       default: false
  end

  add_index "department_locations", ["department_id", "disabled"], name: "department_locations_01"
  add_index "department_locations", ["department_id", "location_id", "disabled"], name: "department_locations_02"

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "default_location_id"
  end

  create_table "document_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "options"
    t.boolean  "disabled",   default: false
  end

  create_table "document_versions", force: true do |t|
    t.string   "item_type",      limit: 4000, null: false
    t.integer  "item_id",                     null: false
    t.string   "event",          limit: 4000, null: false
    t.string   "whodunnit",      limit: 4000
    t.text     "object"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "object_changes"
  end

  add_index "document_versions", ["item_type", "item_id"], name: "index_document_versions_on_item_type_and_item_id"

  create_table "documents", force: true do |t|
    t.integer  "document_type_id"
    t.string   "details"
    t.integer  "attachment_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "request_number"
    t.string   "state"
    t.integer  "ticket_id"
    t.integer  "dispatched_by"
    t.datetime "inwarded_date"
    t.integer  "inwarded_by"
    t.integer  "source_id"
    t.string   "source_type"
    t.integer  "destination_id"
    t.string   "destination_type"
    t.integer  "current_location_id"
    t.string   "current_location_type"
    t.string   "barcode"
    t.string   "uuid_token"
    t.string   "document_token"
    t.boolean  "reinwarded"
  end

  add_index "documents", ["barcode"], name: "documents_03"
  add_index "documents", ["document_token"], name: "documents_04"
  add_index "documents", ["request_number"], name: "documents_02"
  add_index "documents", ["ticket_id"], name: "documents_01"

  create_table "email_templates", force: true do |t|
    t.string   "name"
    t.integer  "ticket_type_id"
    t.string   "action"
    t.string   "vendor_email_content_uri"
    t.string   "dsb_ops_email_content_uri"
    t.string   "nodal_branch_email_content_uri"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "dsb_ops_email_subject"
    t.string   "nodal_branch_email_subject"
    t.string   "vendor_email_subject"
    t.boolean  "disabled",                       default: false
    t.string   "customer_email_subject"
    t.string   "customer_email_content_uri"
    t.text     "vendor_email_content"
    t.text     "dsb_ops_email_content"
    t.text     "nodal_branch_email_content"
    t.text     "customer_email_content"
  end

  add_index "email_templates", ["action"], name: "index_email_templates_on_action"
  add_index "email_templates", ["ticket_type_id"], name: "index_email_templates_on_ticket_type_id"

  create_table "emi_extracts", force: true do |t|
    t.date     "extract_date",     null: false
    t.integer  "outgoing_file_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "emi_extracts", ["extract_date"], name: "emi_extracts_01"

  create_table "emi_plans", force: true do |t|
    t.string   "plan_id"
    t.string   "plan_name"
    t.integer  "tenure"
    t.decimal  "int_rate",                        precision: 18, scale: 2
    t.string   "annual_monthly_flag"
    t.date     "plan_start_date"
    t.date     "plan_expiry"
    t.decimal  "min_amt",                         precision: 18, scale: 2
    t.decimal  "max_amt",                         precision: 18, scale: 2
    t.string   "delinquency_flag"
    t.string   "proc_fee_flg"
    t.decimal  "proc_fee_pct",                    precision: 18, scale: 2
    t.decimal  "proc_fee_amt",                    precision: 18, scale: 2
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "for_account_type"
    t.string   "plan_type",                                                null: false
    t.string   "label",               limit: 100
  end

  add_index "emi_plans", ["min_amt", "max_amt", "plan_start_date", "plan_expiry", "for_account_type"], name: "emi_plans_02"
  add_index "emi_plans", ["plan_id"], name: "emi_plans_01"

  create_table "emi_plans_20171211", force: true do |t|
    t.string   "plan_id"
    t.string   "plan_name"
    t.integer  "tenure"
    t.decimal  "int_rate",                        precision: 18, scale: 2
    t.string   "annual_monthly_flag"
    t.date     "plan_start_date"
    t.date     "plan_expiry"
    t.decimal  "min_amt",                         precision: 18, scale: 2
    t.decimal  "max_amt",                         precision: 18, scale: 2
    t.string   "delinquency_flag"
    t.string   "proc_fee_flg"
    t.decimal  "proc_fee_pct",                    precision: 18, scale: 2
    t.decimal  "proc_fee_amt",                    precision: 18, scale: 2
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "for_account_type"
    t.string   "plan_type",                                                null: false
    t.string   "label",               limit: 100
  end

  create_table "emi_plans_20180428", force: true do |t|
    t.string   "plan_id"
    t.string   "plan_name"
    t.integer  "tenure"
    t.decimal  "int_rate",                        precision: 18, scale: 2
    t.string   "annual_monthly_flag"
    t.date     "plan_start_date"
    t.date     "plan_expiry"
    t.decimal  "min_amt",                         precision: 18, scale: 2
    t.decimal  "max_amt",                         precision: 18, scale: 2
    t.string   "delinquency_flag"
    t.string   "proc_fee_flg"
    t.decimal  "proc_fee_pct",                    precision: 18, scale: 2
    t.decimal  "proc_fee_amt",                    precision: 18, scale: 2
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "for_account_type"
    t.string   "plan_type",                                                null: false
    t.string   "label",               limit: 100
  end

  create_table "emi_plans_channels", force: true do |t|
    t.integer "emi_plan_id"
    t.integer "channel_id"
  end

  add_index "emi_plans_channels", ["emi_plan_id"], name: "emi_plans_channels_01"

  create_table "emi_plans_channels_Backup28Apr17", id: false, force: true do |t|
    t.integer "emi_plan_id"
    t.integer "channel_id"
  end

  create_table "escalation_email_lists", force: true do |t|
    t.string   "email_id"
    t.integer  "escalation_report_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "escalation_report_orders", force: true do |t|
    t.string   "field"
    t.string   "order"
    t.integer  "escalation_report_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "escalation_report_orders", ["escalation_report_id"], name: "index_escalation_report_orders_on_escalation_report_id"

  create_table "escalation_reports", force: true do |t|
    t.string   "assigned_department_id",     limit: 2001
    t.string   "assigned_location_id",       limit: 2001
    t.date     "due_date"
    t.string   "search_name"
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.string   "reported_department_id",     limit: 2001
    t.string   "reported_location_id",       limit: 2001
    t.date     "created_from"
    t.date     "created_to"
    t.string   "request_type",               limit: 2001
    t.integer  "user_id"
    t.string   "visibility"
    t.string   "status",                     limit: 2001
    t.string   "assigned_zone",              limit: 2001
    t.string   "assigned_cluster",           limit: 2001
    t.string   "reported_cluster",           limit: 2001
    t.string   "reported_zone",              limit: 2001
    t.integer  "mail_sent",                               default: 0
    t.integer  "escalation_days"
    t.integer  "created_at_escalation_days"
    t.integer  "priority"
    t.integer  "rework_count"
    t.string   "document_workflow"
    t.string   "template"
    t.integer  "reopen_count"
    t.string   "selected_custom_fields",     limit: 4000
    t.string   "all_custom_fields",          limit: 4000
    t.boolean  "include_custom_fields",                   default: false
    t.boolean  "rc_completed",                            default: false
    t.string   "account_sol"
    t.string   "account_business_segment"
    t.string   "account_scheme"
    t.string   "classification"
  end

  create_table "exat", force: true do |t|
    t.string   "org"
    t.string   "account"
    t.string   "rec_no"
    t.string   "logo"
    t.string   "type"
    t.string   "txn_date"
    t.string   "mt_type"
    t.string   "txn_code"
    t.string   "amount"
    t.string   "f1"
    t.string   "unit_price"
    t.string   "f2"
    t.string   "batch_dt"
    t.string   "post_date"
    t.string   "quantity"
    t.string   "authcode"
    t.string   "mt_si_org"
    t.string   "mt_si_nbr"
    t.string   "plan_no"
    t.string   "salesperso"
    t.string   "tkt_nbr"
    t.string   "purch_num"
    t.string   "pmt_ref_no"
    t.string   "item_nbr"
    t.string   "ref_nbr"
    t.string   "merchant"
    t.string   "city"
    t.string   "country"
    t.string   "plan_open"
    t.string   "input_src"
    t.string   "mult_ref"
    t.string   "fsp"
    t.string   "fsp_prg_no"
    t.string   "merch_org"
    t.string   "merch_stor"
    t.string   "cat_code"
    t.string   "prod_grp"
    t.string   "sku_nbr"
    t.string   "logic_mod"
    t.string   "rpt_desc"
    t.string   "gl_source"
    t.string   "dept"
    t.string   "source"
    t.string   "batch_no"
    t.string   "batch_seq"
    t.string   "plan_seq"
    t.string   "sort_prior"
    t.string   "post_flag"
    t.string   "visatranid"
    t.string   "ichng_fee"
    t.string   "qual_id"
    t.string   "card_nbr"
    t.string   "card_seq"
    t.string   "card_blk"
    t.string   "ins_prod"
    t.string   "act_term"
    t.string   "forex_cd"
    t.string   "relpmt_amt"
    t.string   "f3"
    t.string   "orig_pymt"
    t.string   "f4"
    t.string   "stmt_flag"
    t.string   "sou_txn_dt"
    t.string   "c_city"
    t.string   "c_country"
    t.string   "sou_txn_am"
    t.string   "curry_code"
    t.string   "c_arn"
    t.string   "c_aqr_bin"
    t.string   "c_record_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "exbs", force: true do |t|
    t.string   "org"
    t.string   "account_no"
    t.string   "channel"
    t.string   "chan_part"
    t.string   "chan_exec"
    t.string   "chan_sno"
    t.string   "superpromo"
    t.string   "promo"
    t.string   "citycode"
    t.string   "regncode"
    t.string   "user1"
    t.string   "br_nbr"
    t.string   "approver"
    t.string   "apprefno"
    t.string   "crlimit"
    t.string   "temp_limit"
    t.string   "cust_nbr"
    t.string   "dt_crd_fee"
    t.string   "int_status"
    t.string   "chgoff_st"
    t.string   "chgof_rsn1"
    t.string   "chgof_rsn2"
    t.string   "dys_t_coff"
    t.string   "rel_nbr"
    t.string   "rel_cr_lim"
    t.string   "dt_opened"
    t.string   "dt_closed"
    t.string   "gcrd_expdt"
    t.string   "rt_mail_ct"
    t.string   "bill_cyc"
    t.string   "stmt_flag"
    t.string   "dt_nxt_stm"
    t.string   "bc1"
    t.string   "dt_bc1"
    t.string   "bc2"
    t.string   "dt_bc2"
    t.string   "acct_rest"
    t.string   "nbr_unblk"
    t.string   "vip_status"
    t.string   "cb_cr_scor"
    t.string   "appl_cr_sc"
    t.string   "misc_cr_sc"
    t.string   "emp_code"
    t.string   "wcode_1"
    t.string   "wcode_2"
    t.string   "wcode_3"
    t.string   "wcode_4"
    t.string   "wcode_5"
    t.string   "wcode_6"
    t.string   "wcode_7"
    t.string   "corp_id"
    t.string   "pct_lvl"
    t.string   "pct_lvl_st"
    t.string   "pct_lvl_ex"
    t.string   "acct_ctl_t"
    t.string   "pct_ctl_id"
    t.string   "pct_st_dt"
    t.string   "pct_exp_dt"
    t.string   "wa_lat_chg"
    t.string   "wa_int_chg"
    t.string   "wa_lat_not"
    t.string   "wa_ovl_not"
    t.string   "wa_sc_chg1"
    t.string   "wa_sc_chg2"
    t.string   "wa_sc_chg3"
    t.string   "wa_sc_chg4"
    t.string   "wa_sc_chg5"
    t.string   "wa_sc_chg6"
    t.string   "wa_sc_chg7"
    t.string   "wa_sc_chg8"
    t.string   "wa_sc_chg9"
    t.string   "wa_s_chg10"
    t.string   "wa_fee_chg"
    t.string   "wa_ovlm"
    t.string   "wa_crd_fee"
    t.string   "wa_us_fee1"
    t.string   "wa_us_fee2"
    t.string   "wa_us_fee3"
    t.string   "wa_us_fee4"
    t.string   "wa_us_fee5"
    t.string   "wa_us_fee6"
    t.string   "xfr_org"
    t.string   "xfr_logo"
    t.string   "xfr_acct"
    t.string   "dt_xfr_eff"
    t.string   "dt_last_re"
    t.string   "fs_flag"
    t.string   "past_ctr"
    t.string   "past_due"
    t.string   "d30_ctr"
    t.string   "d30"
    t.string   "d60_ctr"
    t.string   "d60"
    t.string   "d90_ctr"
    t.string   "d90"
    t.string   "d120_ct"
    t.string   "d120"
    t.string   "d150_ct"
    t.string   "d150"
    t.string   "d180_ct"
    t.string   "d180"
    t.string   "d210_ct"
    t.string   "d210"
    t.string   "history"
    t.string   "pay_rem_me"
    t.string   "dc_ach_rt"
    t.string   "dt_ach_pmt"
    t.string   "nom_ach_st"
    t.string   "nom_ach_pc"
    t.string   "curr_bal"
    t.string   "memo_total"
    t.string   "amt_mem_db"
    t.string   "amt_mem_cr"
    t.string   "cash_bal"
    t.string   "csh_av_cr"
    t.string   "loan_avail"
    t.string   "loan_bal"
    t.string   "dt_pmt_due"
    t.string   "pmt_tot_am"
    t.string   "immed_due"
    t.string   "last_crlim"
    t.string   "dte_lst_cl"
    t.string   "hi_bal"
    t.string   "amt_lst_pu"
    t.string   "dte_lst_pu"
    t.string   "first_pur"
    t.string   "first_pur2"
    t.string   "lst_csh_ad"
    t.string   "lst_csh_a2"
    t.string   "dte_lst_pm"
    t.string   "pmt_lst_am"
    t.string   "dte_lst_re"
    t.string   "ytd_billed"
    t.string   "ttl_ps_ini"
    t.string   "dte_into_c"
    t.string   "prev_cyc_d"
    t.string   "lst_cr_cla"
    t.string   "cr_class"
    t.string   "nbr_nsf"
    t.string   "mth_bal"
    t.string   "card_usage"
    t.string   "mth_pur"
    t.string   "lsi_org"
    t.string   "lsi_nbr"
    t.string   "fs_tot_ctd"
    t.string   "fs_tot_ct2"
    t.string   "fs_tot_ct3"
    t.string   "fs_pgm_bal"
    t.string   "fs_pgm_ba2"
    t.string   "fs_pgm_ba3"
    t.string   "fs_pgm_ba4"
    t.string   "fs_pgm_ba5"
    t.string   "fs_pgm_ba6"
    t.string   "nbr_ytd_pu"
    t.string   "amt_ytd_pu"
    t.string   "nbr_ltd_pu"
    t.string   "amt_ltd_pu"
    t.string   "nbr_ctd_pu"
    t.string   "amt_ctd_pu"
    t.string   "nbr_ytd_cs"
    t.string   "amt_ytd_cs"
    t.string   "nbr_ltd_cs"
    t.string   "amt_ltd_cs"
    t.string   "nbr_ctd_cs"
    t.string   "amt_ctd_cs"
    t.string   "nbr_ytd_re"
    t.string   "amt_ytd_re"
    t.string   "nbr_ltd_re"
    t.string   "amt_ltd_re"
    t.string   "nbr_ctd_re"
    t.string   "amt_ctd_re"
    t.string   "pmt_dc_ach"
    t.string   "pmt_recenc"
    t.string   "total_past"
    t.string   "olc_reason"
    t.string   "curr_colr"
    t.string   "pmt_cycle"
    t.string   "nbr_rtn_pm"
    t.string   "pmt_ctd"
    t.string   "pmt_ctd_nb"
    t.string   "amt_db"
    t.string   "nbr_db"
    t.string   "nbr_cr"
    t.string   "amt_cr"
    t.string   "ol_nbr_cyc"
    t.string   "dpd"
    t.string   "dte_lst_de"
    t.string   "dte_hi_bal"
    t.string   "dte_crlim"
    t.string   "dte_temp_c"
    t.string   "crd_limit"
    t.string   "crd_avail"
    t.string   "dolr"
    t.string   "user3"
    t.string   "user4"
    t.string   "user5"
    t.string   "user_dt_10"
    t.string   "user_dt_11"
    t.string   "user_dt_12"
    t.string   "usr_amt_12"
    t.string   "usr_amt_13"
    t.string   "dec_usr_id"
    t.string   "pct"
    t.string   "c_logo"
    t.string   "c_customer_name"
    t.string   "c_affiliation"
    t.string   "d_chargeoff_date"
    t.string   "c_user_code_6"
    t.string   "c_user_code_7"
    t.string   "c_user_code_8"
    t.string   "c_user_code_9"
    t.string   "c_user_code_10"
    t.string   "c_user_code_11"
    t.string   "c_user_code_12"
    t.string   "c_user_code_13"
    t.string   "c_user_code_14"
    t.string   "d_user_date_1"
    t.string   "d_user_date_2"
    t.string   "d_user_date_3"
    t.string   "d_user_date_4"
    t.string   "d_user_date_5"
    t.string   "d_user_date_6"
    t.string   "d_user_date_7"
    t.string   "d_user_date_8"
    t.string   "d_user_date_9"
    t.string   "d_user_date_13"
    t.string   "n_user_amount_1"
    t.string   "n_user_amount_2"
    t.string   "n_user_amount_3"
    t.string   "n_user_amount_4"
    t.string   "n_user_amount_5"
    t.string   "n_user_amount_6"
    t.string   "n_user_amount_7"
    t.string   "n_user_amount_8"
    t.string   "n_user_amount_9"
    t.string   "n_user_amount_10"
    t.string   "n_user_amount_11"
    t.string   "n_user_amount_14"
    t.string   "c_dec_user_id"
    t.string   "c_pct"
    t.string   "c_overlimit_flag"
    t.string   "c_cif"
    t.string   "n_days_past_due"
    t.string   "d_last_statement"
    t.string   "n_last_statement_balance"
    t.string   "d_last_payment_return"
    t.string   "n_amount_ltd_payment"
    t.string   "n_ltd_returns"
    t.string   "c_aps_source"
    t.string   "c_statement_flag"
    t.string   "c_letter_flag"
    t.string   "c_record_type"
    t.string   "block"
    t.string   "bkt"
    t.string   "risk"
    t.string   "bom_dues"
    t.string   "bom_risk"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "exee", force: true do |t|
    t.string   "org"
    t.string   "card_no"
    t.string   "card_seq"
    t.string   "card_flag"
    t.string   "emboss1"
    t.string   "emboss2"
    t.string   "dob"
    t.string   "crd_type"
    t.string   "photo_ref"
    t.string   "sign_ref"
    t.string   "lmaintdt"
    t.string   "lmaintid"
    t.string   "status"
    t.string   "status_de"
    t.string   "stat_secid"
    t.string   "lst_iss_dt"
    t.string   "fst_ver_dt"
    t.string   "freq"
    t.string   "rtl_amt"
    t.string   "rtl_nbr"
    t.string   "atm_amt"
    t.string   "atm_nbr"
    t.string   "ocash_amt"
    t.string   "ocash_nbr"
    t.string   "atm_singl"
    t.string   "ocash_sing"
    t.string   "rtl_sing"
    t.string   "account"
    t.string   "block"
    t.string   "blockdt"
    t.string   "feedate"
    t.string   "feeflag"
    t.string   "photodate"
    t.string   "dlyatmamt"
    t.string   "dlyatmnum"
    t.string   "ctdatmamt"
    t.string   "ctdatmnum"
    t.string   "ytdatmamt"
    t.string   "ytdatmnum"
    t.string   "ltdatmamt"
    t.string   "ltdatmnum"
    t.string   "dlyotcamt"
    t.string   "dlyotcnum"
    t.string   "ctdotcamt"
    t.string   "ctdotcnum"
    t.string   "ytdotcamt"
    t.string   "ytdotcnum"
    t.string   "ltdotcamt"
    t.string   "ltdotcnum"
    t.string   "dlysalamt"
    t.string   "dlysalnum"
    t.string   "ctdsalamt"
    t.string   "ctdsalnum"
    t.string   "ytdsalamt"
    t.string   "ytdsalnum"
    t.string   "ltdsalamt"
    t.string   "ltdsalnum"
    t.string   "c_sale_num"
    t.string   "c_sale_amt"
    t.string   "c_saretnum"
    t.string   "c_saretamt"
    t.string   "c_sadisnum"
    t.string   "c_sadisamt"
    t.string   "c_saappnum"
    t.string   "c_saappamt"
    t.string   "c_sadecnum"
    t.string   "c_sadecamt"
    t.string   "y_sale_num"
    t.string   "y_sale_amt"
    t.string   "y_saretnum"
    t.string   "y_saretamt"
    t.string   "y_sadisnum"
    t.string   "y_sadisamt"
    t.string   "y_saappnum"
    t.string   "y_saappamt"
    t.string   "y_sadecnum"
    t.string   "y_sadecamt"
    t.string   "l_sale_num"
    t.string   "l_sale_amt"
    t.string   "l_saretnum"
    t.string   "l_saretamt"
    t.string   "l_sadisnum"
    t.string   "l_sadisamt"
    t.string   "l_saappnum"
    t.string   "l_sappamt"
    t.string   "l_sadecnum"
    t.string   "l_sadecamt"
    t.string   "c_cashnum"
    t.string   "c_cashamt"
    t.string   "c_carevnum"
    t.string   "c_carevamt"
    t.string   "c_cadisnum"
    t.string   "c_cadisamt"
    t.string   "c_caappnum"
    t.string   "c_caappamt"
    t.string   "c_cadecnum"
    t.string   "c_cadecamt"
    t.string   "y_cashnum"
    t.string   "y_cashamt"
    t.string   "y_carevnum"
    t.string   "y_carevamt"
    t.string   "y_cadisnum"
    t.string   "y_cadisamt"
    t.string   "y_caappnum"
    t.string   "y_caappamt"
    t.string   "y_cadecnum"
    t.string   "y_cadecamt"
    t.string   "l_cashnum"
    t.string   "l_cashamt"
    t.string   "l_carevnum"
    t.string   "l_carevamt"
    t.string   "l_cadisnum"
    t.string   "l_cadisamt"
    t.string   "l_caappnum"
    t.string   "l_caappamt"
    t.string   "l_cadecnum"
    t.string   "l_cadecamt"
    t.string   "c_logo"
    t.string   "c_customer_number"
    t.string   "c_relationship_number"
    t.string   "d_expiry_date"
    t.string   "d_current_expiry_date"
    t.string   "d_last_expiry_date"
    t.string   "d_date_of_birth"
    t.string   "c_card_type"
    t.string   "c_affiliation"
    t.string   "c_user_2"
    t.string   "c_user_3"
    t.string   "c_user_6"
    t.string   "c_user_7"
    t.string   "c_user_8"
    t.string   "c_record_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "exna", force: true do |t|
    t.string   "org"
    t.string   "cust_nbr"
    t.string   "title"
    t.string   "cust_name"
    t.string   "gender"
    t.string   "nationalit"
    t.string   "moth_name"
    t.string   "mar_status"
    t.string   "spous_name"
    t.string   "res_add1"
    t.string   "res_add2"
    t.string   "res_city"
    t.string   "res_state"
    t.string   "res_pin"
    t.string   "per_email"
    t.string   "res_ph1"
    t.string   "mobile1"
    t.string   "fax_ph1"
    t.string   "perm_add1"
    t.string   "perm_add2"
    t.string   "per_add3"
    t.string   "perm_ph"
    t.string   "employer"
    t.string   "designatio"
    t.string   "off_add1"
    t.string   "off_add2"
    t.string   "off_city"
    t.string   "off_pin"
    t.string   "emp_ph2"
    t.string   "fax_ph2"
    t.string   "mobile2"
    t.string   "off_extn"
    t.string   "email_2"
    t.string   "abn_custno"
    t.string   "c_logo"
    t.string   "c_account_number"
    t.string   "c_statement_flag"
    t.string   "c_letter_flag"
    t.string   "c_region_code"
    t.string   "c_city_code"
    t.string   "c_driving_license_n"
    t.string   "d_date_of_birth"
    t.string   "c_marital_status"
    t.string   "c_ssan"
    t.string   "c_record_type"
    t.string   "card_vip"
    t.string   "user_1"
    t.string   "user_2"
    t.string   "user_3"
    t.string   "user_4"
    t.string   "user_6"
    t.string   "user_7"
    t.string   "user_9"
    t.string   "user_10"
    t.string   "user_11"
    t.string   "user_13"
    t.string   "pan_number"
    t.string   "state_prov"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "faqs", force: true do |t|
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "field_lookups", force: true do |t|
    t.string   "field_name",                             null: false
    t.string   "field_values",              limit: 4000, null: false
    t.string   "source_of_complaint_value"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "created_by",                limit: 20
    t.string   "updated_by",                limit: 20
  end

  add_index "field_lookups", ["field_name", "source_of_complaint_value"], name: "field_lookups_01", unique: true

  create_table "holiday_lists", force: true do |t|
    t.string   "holiday_name"
    t.date     "holiday_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "state"
  end

  create_table "loan_application_extracts", force: true do |t|
    t.integer  "outgoing_file_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.date     "min_appl_date",               null: false
    t.date     "max_appl_date",               null: false
    t.string   "appl_status",      limit: 30
  end

  add_index "loan_application_extracts", ["min_appl_date", "max_appl_date"], name: "loan_application_extracts_01"

  create_table "loan_applications", force: true do |t|
    t.string  "txn_kind",           limit: 20,                                       null: false
    t.string  "req_ref_no",         limit: 50,                                       null: false
    t.string  "auth_code",          limit: 50
    t.date    "application_date"
    t.string  "customer_name"
    t.string  "plan_name"
    t.decimal "loan_amount",                    precision: 18, scale: 2
    t.integer "loan_tenure"
    t.decimal "loan_interest_rate",             precision: 18, scale: 2
    t.decimal "emi_value",                      precision: 18, scale: 2
    t.string  "otp_mobile_no",      limit: 20
    t.string  "card_no",            limit: 30
    t.string  "other_bank_card",    limit: 30
    t.string  "bene_account_no",    limit: 30
    t.string  "bene_account_ifsc",  limit: 20
    t.string  "status_code",        limit: 20
    t.string  "app_id",             limit: 50
    t.string  "emi_plan_id"
    t.date    "decided_on"
    t.string  "reject_reason"
    t.integer "limit_version",                                           default: 0, null: false
    t.decimal "processing_fee",                 precision: 18, scale: 2
    t.string  "bank_name"
    t.integer "billing_cycle"
    t.string  "emi_plan_label",     limit: 100
  end

  add_index "loan_applications", ["customer_name", "card_no", "application_date", "status_code"], name: "loan_applications_02"
  add_index "loan_applications", ["req_ref_no"], name: "loan_applications_01"

  create_table "locations", force: true do |t|
    t.string   "city"
    t.string   "area"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "state"
    t.string   "cluster_unit"
    t.string   "zone"
    t.integer  "sol_id"
  end

  add_index "locations", ["city", "area"], name: "locations_02"
  add_index "locations", ["sol_id"], name: "locations_01"

  create_table "locations_nodal_branches", force: true do |t|
    t.integer "nodal_branch_id"
    t.integer "branch_sol_id"
  end

  create_table "nodal_branch_vendors", force: true do |t|
    t.integer  "nodal_branch_sol_id"
    t.integer  "vendor_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "ticket_type_id"
  end

  create_table "nodal_branches", force: true do |t|
    t.integer  "nodal_branch_sol_id"
    t.string   "nodal_branch_type"
    t.integer  "ticket_type_id"
    t.integer  "branches"
    t.string   "nodal_branch_fax_number"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "email_id"
    t.boolean  "disabled",                default: false
  end

  create_table "outgoing_files", force: true do |t|
    t.string   "file_name",     limit: 50,   null: false
    t.string   "file_path",     limit: 50,   null: false
    t.integer  "line_count"
    t.datetime "started_at",                 null: false
    t.datetime "ended_at"
    t.string   "status_code",   limit: 20
    t.string   "fault_code",    limit: 50
    t.string   "fault_subcode", limit: 50
    t.string   "fault_reason",  limit: 1000
  end

  create_table "priority_segment_codes", force: true do |t|
    t.string   "system_name",  null: false
    t.text     "segment_code", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.boolean  "has_emi_facility"
    t.integer  "created_by"
    t.integer  "lock_version"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "updated_by"
  end

  create_table "rails_books", force: true do |t|
    t.string   "title",       limit: 32, null: false
    t.float    "price",       limit: 24
    t.integer  "subject_id"
    t.text     "description"
    t.datetime "created_at"
  end

  create_table "rails_subjects", force: true do |t|
    t.string "name"
  end

  create_table "rc_list_values", force: true do |t|
    t.string   "field_name"
    t.string   "code_text"
    t.integer  "code_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_cruds", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "title"
    t.text     "instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registered_cards", force: true do |t|
    t.string   "customer_id"
    t.string   "registered_card"
    t.string   "account_no"
    t.boolean  "is_deregistered"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "created_by"
    t.integer  "updated_by"
    t.string   "card_customer_id"
  end

  add_index "registered_cards", ["is_deregistered", "card_customer_id"], name: "Registered_cards_CIPL_Idx"

  create_table "required_documents", force: true do |t|
    t.integer  "ticket_type_id"
    t.integer  "document_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reward_points", force: true do |t|
    t.string   "account_no"
    t.date     "statement_date"
    t.date     "payment_due_date"
    t.float    "total_amount_due",            limit: 24
    t.float    "minimum_amount_due",          limit: 24
    t.integer  "reward_points_begin_balance"
    t.integer  "cycle_to_date_earned"
    t.integer  "cycle_to_date_adjusted"
    t.integer  "cycle_to_date_disbursed"
    t.integer  "total_reward_points_balance"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "file_name",                   limit: 200
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_on_role_name", unique: true
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "root_cause_versions", force: true do |t|
    t.string   "item_type",      limit: 4000, null: false
    t.integer  "item_id",                     null: false
    t.string   "event",          limit: 4000, null: false
    t.string   "whodunnit",      limit: 4000
    t.text     "object"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "object_changes"
  end

  add_index "root_cause_versions", ["item_type", "item_id"], name: "index_root_cause_versions_on_item_type_and_item_id"

  create_table "root_causes", force: true do |t|
    t.boolean  "rc_valid_complaint",       default: false
    t.integer  "rc_erring_unit"
    t.string   "rc_complaint_description"
    t.integer  "rc_category_code"
    t.integer  "action_category_code"
    t.string   "action_plan_description"
    t.date     "action_plan_target"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "routings", force: true do |t|
    t.integer  "origin_location_id"
    t.integer  "department_id"
    t.integer  "destination_location_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "ticket_type_id"
  end

  add_index "routings", ["ticket_type_id"], name: "index_routings_on_ticket_type_id"

  create_table "sla_limits", force: true do |t|
    t.integer  "sla_level"
    t.integer  "tat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sla_limits", ["sla_level"], name: "index_sla_limits_on_sla_level"

  create_table "sms_templates", force: true do |t|
    t.string   "name"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "template_uri"
    t.integer  "ticket_type_id"
    t.string   "action"
    t.boolean  "disabled",       default: false
    t.text     "template"
  end

  create_table "status_codes", force: true do |t|
    t.string   "status_code"
    t.string   "description"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "system_task_logs", force: true do |t|
    t.integer  "system_task_id"
    t.integer  "ticket_id"
    t.string   "status"
    t.text     "output"
    t.integer  "retry_count"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "request"
    t.string   "ticket_access_token"
    t.string   "error_messages",      limit: 4000
  end

  create_table "system_tasks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tbl", id: false, force: true do |t|
    t.string  "TableName", limit: 100
    t.integer "RowCount"
  end

  create_table "ticket_checklists", force: true do |t|
    t.integer  "ticket_type_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "disabled"
  end

  add_index "ticket_checklists", ["ticket_type_id"], name: "ticket_checklists_1", unique: true

  create_table "ticket_counters", force: true do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_counts", force: true do |t|
    t.string   "role"
    t.integer  "department_location_id"
    t.string   "ticket_state"
    t.integer  "db_count"
    t.integer  "solr_count"
    t.boolean  "match_flag"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ticket_fields", force: true do |t|
    t.string   "name"
    t.string   "field_type"
    t.boolean  "mandatory"
    t.integer  "ticket_template_id"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.text     "options"
    t.text     "custom_validation"
    t.string   "date_validation"
    t.integer  "sms_usage_length"
    t.string   "sms_usage_position"
    t.boolean  "used_in_sms"
    t.string   "default_provider"
    t.boolean  "disabled",                         default: false
    t.integer  "position",                                         null: false
    t.string   "tooltip",              limit: 100
    t.integer  "field_group_id"
    t.boolean  "is_control_field"
    t.integer  "control_field_id"
    t.string   "control_field_value1"
    t.string   "control_field_value2"
    t.string   "control_field_value3"
    t.string   "default_setting"
  end

  add_index "ticket_fields", ["name"], name: "ticket_fields_01"
  add_index "ticket_fields", ["ticket_template_id"], name: "index_ticket_fields_on_ticket_template_id"

  create_table "ticket_help_pages", force: true do |t|
    t.integer  "ticket_type_id", null: false
    t.text     "content",        null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "disabled"
  end

  add_index "ticket_help_pages", ["ticket_type_id"], name: "ticket_help_pages_1", unique: true

  create_table "ticket_link_types", force: true do |t|
    t.string   "name"
    t.string   "inward_description"
    t.string   "outward_description"
    t.boolean  "disabled",            default: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "ticket_links", force: true do |t|
    t.integer  "inward_ticket_id"
    t.integer  "outward_ticket_id"
    t.integer  "user_id"
    t.integer  "ticket_link_type_id"
    t.integer  "ticket_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "active",              default: true
  end

  add_index "ticket_links", ["inward_ticket_id"], name: "idx_links_on_inward_ticket_id"
  add_index "ticket_links", ["outward_ticket_id"], name: "idx_links_on_outward_ticket_id"

  create_table "ticket_sequences", primary_key: "ID", force: true do |t|
  end

  create_table "ticket_templates", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_transitions", force: true do |t|
    t.string   "state_name"
    t.integer  "state_count"
    t.integer  "ticket_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.float    "time_spent",     limit: 24
    t.string   "last_action_by"
    t.datetime "last_action_at"
  end

  add_index "ticket_transitions", ["state_name"], name: "index_ticket_transitions_on_state_name"
  add_index "ticket_transitions", ["ticket_id"], name: "index_ticket_transitions_on_ticket_id"

  create_table "ticket_types", force: true do |t|
    t.string   "name"
    t.string   "document_workflow"
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.integer  "department_id"
    t.string   "workflow"
    t.boolean  "disabled"
    t.boolean  "reassignable_department"
    t.integer  "tat"
    t.text     "creation_note"
    t.string   "prefix"
    t.string   "ticket_group"
    t.integer  "attachmets_count"
    t.integer  "attachment_count"
    t.boolean  "worklist_flag",                           default: true
    t.string   "classification"
    t.string   "tat_type"
    t.integer  "priority_tat"
    t.string   "priority_tat_type"
    t.boolean  "reopenable"
    t.boolean  "attachment_validation",                   default: true
    t.string   "account_type"
    t.string   "system_name"
    t.string   "dsb_narration"
    t.boolean  "reassignable_location"
    t.boolean  "self_assignment"
    t.string   "system_task"
    t.string   "ticket_priority",               limit: 1, default: "N",   null: false
    t.integer  "verification_department_id"
    t.boolean  "closure_attachment_validation",           default: false
    t.integer  "closure_attachment_count"
  end

  add_index "ticket_types", ["id", "workflow"], name: "ticket_types_02"
  add_index "ticket_types", ["workflow"], name: "ticket_types_1"

  create_table "ticket_values", force: true do |t|
    t.string   "value"
    t.integer  "ticket_id"
    t.integer  "ticket_field_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "created_activity_id"
    t.integer  "updated_activity_id"
  end

  add_index "ticket_values", ["created_activity_id"], name: "index_ticket_values_on_created_activity_id"
  add_index "ticket_values", ["ticket_field_id"], name: "index_ticket_values_on_ticket_field_id"
  add_index "ticket_values", ["ticket_id"], name: "index_ticket_values_on_ticket_id"
  add_index "ticket_values", ["updated_activity_id"], name: "index_ticket_values_on_updated_activity_id"

  create_table "tickets", force: true do |t|
    t.string   "id_token"
    t.string   "access_token"
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.text     "subject"
    t.integer  "private",                              default: 0
    t.integer  "reporter_id"
    t.integer  "assignee_id"
    t.integer  "status",                               default: 1
    t.boolean  "urgent",                               default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "account_number"
    t.string   "state"
    t.integer  "assignee_loc_id"
    t.integer  "ticket_template_id"
    t.text     "closure_note"
    t.datetime "due_date"
    t.integer  "orig_dep"
    t.integer  "orig_loc"
    t.integer  "priority",                             default: 0
    t.integer  "rework_count",                         default: 0
    t.boolean  "resolution_flag",                      default: true
    t.integer  "updated_by"
    t.integer  "reopen_count",                         default: 0
    t.boolean  "rc_completed",                         default: false
    t.integer  "root_cause_id"
    t.string   "account_sol"
    t.string   "account_business_segment"
    t.string   "account_scheme"
    t.integer  "prev_assignee_dep"
    t.integer  "prev_assignee_loc"
    t.string   "mobile_no"
    t.string   "cif_id"
    t.string   "reason_for_delay"
    t.string   "source_of_complaint"
    t.string   "mode_of_complaint"
    t.string   "compensation_paid"
    t.string   "amount_of_compensation"
    t.string   "account_name"
    t.string   "finacle_request_id"
    t.string   "ticket_hash",              limit: 100
  end

  add_index "tickets", ["access_token"], name: "index_tickets_on_access_token", unique: true
  add_index "tickets", ["account_number"], name: "index_tickets_on_account_no"
  add_index "tickets", ["assignee_id", "assignee_loc_id", "updated_at", "state"], name: "index_tickets_on_responder_id"
  add_index "tickets", ["category_id"], name: "tickets_01"
  add_index "tickets", ["cif_id"], name: "tickets_03"
  add_index "tickets", ["created_at"], name: "index_tickets_on_created_at"
  add_index "tickets", ["mobile_no"], name: "tickets_02"
  add_index "tickets", ["orig_dep", "orig_loc", "updated_at", "state"], name: "index_tickets_on_reporter_id"
  add_index "tickets", ["reporter_id"], name: "index_tickets_on_requester_id"
  add_index "tickets", ["state", "orig_dep", "orig_loc", "assignee_id", "assignee_loc_id", "id"], name: "tickets_05"
  add_index "tickets", ["state", "orig_dep", "orig_loc", "assignee_id", "assignee_loc_id", "reporter_id", "category_id", "id", "priority", "due_date"], name: "tickets_04"
  add_index "tickets", ["state"], name: "index_tickets_on_state"

  create_table "transaction_code_details", force: true do |t|
    t.integer  "transaction_code"
    t.string   "transaction_flag",        limit: 1,                 null: false
    t.string   "transaction_description"
    t.boolean  "disabled",                          default: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "transaction_code_details", ["transaction_code", "disabled"], name: "transaction_code_01"

  create_table "transaction_code_details_Backup28Apr17", force: true do |t|
    t.integer  "transaction_code"
    t.string   "transaction_flag",        limit: 1, null: false
    t.string   "transaction_description"
    t.boolean  "disabled"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "created_by"
    t.string   "updated_by"
  end

  create_table "transactor_revolver_details", force: true do |t|
    t.string   "account_no"
    t.string   "transactor_revolver_flag"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "file_name",                limit: 200
  end

  create_table "unsubscribed_email_lists", force: true do |t|
    t.string   "email_id"
    t.integer  "escalation_report_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "user_dept_loc_mapping", force: true do |t|
    t.integer "user_id"
    t.integer "department_location_id"
    t.string  "flag"
  end

  add_index "user_dept_loc_mapping", ["user_id", "flag"], name: "index_user_dept_loc_1"

  create_table "users", force: true do |t|
    t.string   "email",                             default: "",   null: false
    t.string   "encrypted_password",                default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "department_id"
    t.integer  "location_id"
    t.integer  "emp_id"
    t.string   "username"
    t.boolean  "inactive"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "supervisor_id"
    t.string   "unique_session_id",      limit: 20
    t.string   "mobile_no"
    t.boolean  "receive_sms",                       default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["id"], name: "users_01"
  add_index "users", ["supervisor_id"], name: "in_users_on_supervisor_id"

  create_table "users1", id: false, force: true do |t|
    t.integer  "id",                                null: false
    t.string   "email",                             null: false
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "department_id"
    t.integer  "location_id"
    t.integer  "emp_id"
    t.string   "username"
    t.boolean  "inactive"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "supervisor_id"
    t.string   "unique_session_id",      limit: 20
    t.string   "mobile_no"
    t.boolean  "receive_sms"
  end

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

  create_table "valid_templates", force: true do |t|
    t.integer  "ticket_type_id"
    t.integer  "ticket_template_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "closure_template_id"
    t.integer  "cancellation_template_id"
    t.integer  "return_template_id"
    t.integer  "resolve_template_id"
  end

  add_index "valid_templates", ["ticket_template_id"], name: "index_valid_templates_on_ticket_template_id"
  add_index "valid_templates", ["ticket_type_id"], name: "index_valid_templates_on_ticket_type_id"

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "email_id"
    t.string   "contact_numbers"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "address"
    t.boolean  "disabled",        default: false
  end

  create_table "versions", force: true do |t|
    t.integer  "versioned_id"
    t.string   "versioned_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "user_name"
    t.text     "modifications"
    t.integer  "number"
    t.integer  "reverted_from"
    t.string   "tag"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "versions", ["created_at"], name: "index_versions_on_created_at"
  add_index "versions", ["number"], name: "index_versions_on_number"
  add_index "versions", ["tag"], name: "index_versions_on_tag"
  add_index "versions", ["user_id", "user_type"], name: "index_versions_on_user_id_and_user_type"
  add_index "versions", ["user_name"], name: "index_versions_on_user_name"
  add_index "versions", ["versioned_id", "versioned_type"], name: "index_versions_on_versioned_id_and_versioned_type"

  create_table "working_hours", force: true do |t|
    t.string   "start_time"
    t.string   "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
