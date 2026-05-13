
{{
    config(
        materialized = 'table'
    )
}}

with source_employee_data as (

    select * from 
    SANKAR_DB.LND.employee

),

renamed as (

    select
        -- Primary Key
        employee_id,

        -- Attributes
        trim(first_name) as first_name,
        trim(last_name) as last_name,
        lower(trim(email)) as email_address,
        trim(phone_number) as phone_number,
        trim(job_title) as job_title,
        lower(trim(department)) as department_name,
        trim(location_city) as location_city,
        trim(gender) as gender,

        -- Status flags
        case 
            when lower(trim(employment_status)) = 'active' then true
            else false
        end as is_active,

        -- Numeric / Financials
        salary as annual_salary,

        -- Foreign Keys (Safely handled as integer if blank values exist)
        try_to_number(trim(manager_id)) as manager_id,

        -- Dates & Timestamps
        hire_date,
        dob as birth_date,
        created_date as record_created_at

    from source_employee_data

)

select * from renamed
