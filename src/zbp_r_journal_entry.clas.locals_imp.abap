CLASS lhc_zr_journal_entry DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR zr_journal_entry RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zr_journal_entry RESULT result.

    METHODS autocreate FOR MODIFY
      IMPORTING keys FOR ACTION zr_journal_entry~autocreate RESULT result.

ENDCLASS.

CLASS lhc_zr_journal_entry IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD autocreate.
  READ ENTITIES OF ZR_JOURNAL_ENTRY IN LOCAL MODE
        ENTITY ZR_JOURNAL_ENTRY
         ALL FIELDS WITH CORRESPONDING #( keys )
        RESULT DATA(data_read)
        FAILED failed.

  ENDMETHOD.

ENDCLASS.

CLASS lsc_zr_journal_entry DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_zr_journal_entry IMPLEMENTATION.

  METHOD save_modified.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
