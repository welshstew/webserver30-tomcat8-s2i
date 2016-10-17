## Loop a list of JNDI Variables...

## JNDI_VAR_A_KEY
## JNDI_VAR_A_VALUE
## JNDI_VAR_A_TYPE

## JNDI_VAR_B_KEY
## JNDI_VAR_B_VALUE
## JNDI_VAR_B_TYPE


## Does result in having 3 parameters to specify a name/value...! :-O

contextvars=""

while read name ; do
    #here I want to assign jndiValue to the env var value
    jndiKeyName="JNDI_VAR_${name}_KEY"
    jndiValueName="JNDI_VAR_${name}_VALUE"
    jndiTypeName="JNDI_VAR_${name}_TYPE"

    actualVarName=`printenv $jndiKeyName`
    actualVarValue=`printenv $jndiValueName`
    actualVarType=`printenv $jndiTypeName`

    contextvars+="<Environment name=\"$actualVarName\" value=\"$actualVarValue\" type=\"$actualVarType\" />"    

done < <(env | grep JNDI_VAR_ | cut -d "_" -f 3 | sort | uniq)