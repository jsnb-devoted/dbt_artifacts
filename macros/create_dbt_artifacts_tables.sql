{% macro create_dbt_artifacts_tables() %}
    {% set src_dbt_exposures = source('dbt_artifacts', 'exposures') %}
    {{ dbt_artifacts.create_exposures_table_if_not_exists(src_dbt_exposures.schema, src_dbt_exposures.identifier) }}

    {% set src_dbt_model_executions = source('dbt_artifacts', 'model_executions') %}
    {{ dbt_artifacts.create_model_executions_table_if_not_exists(src_dbt_model_executions.schema, src_dbt_model_executions.identifier) }}

    {% set src_dbt_models = source('dbt_artifacts', 'models') %}
    {{ dbt_artifacts.create_models_table_if_not_exists(src_dbt_models.schema, src_dbt_models.identifier) }}

    {% set src_dbt_seed_executions = source('dbt_artifacts', 'seed_executions') %}
    {{ dbt_artifacts.create_seed_executions_table_if_not_exists(src_dbt_seed_executions.schema, src_dbt_seed_executions.identifier) }}

    {% set src_dbt_seeds = source('dbt_artifacts', 'seeds') %}
    {{ dbt_artifacts.create_seeds_table_if_not_exists(src_dbt_seeds.schema, src_dbt_seeds.identifier) }}

    {% set src_dbt_snapshot_executions = source('dbt_artifacts', 'snapshot_executions') %}
    {{ dbt_artifacts.create_snapshot_executions_table_if_not_exists(src_dbt_snapshot_executions.schema, src_dbt_snapshot_executions.identifier) }}

    {% set src_dbt_snapshots = source('dbt_artifacts', 'snapshots') %}
    {{ dbt_artifacts.create_snapshots_table_if_not_exists(src_dbt_snapshots.schema, src_dbt_snapshots.identifier) }}

    {% set src_dbt_sources = source('dbt_artifacts', 'sources') %}
    {{ dbt_artifacts.create_sources_table_if_not_exists(src_dbt_sources.schema, src_dbt_sources.identifier) }}

    {% set src_dbt_test_executions = source('dbt_artifacts', 'test_executions') %}
    {{ dbt_artifacts.create_test_executions_table_if_not_exists(src_dbt_test_executions.schema, src_dbt_test_executions.identifier) }}

    {% set src_dbt_tests = source('dbt_artifacts', 'tests') %}
    {{ dbt_artifacts.create_tests_table_if_not_exists(src_dbt_tests.schema, src_dbt_tests.identifier) }}
{% endmacro %}
