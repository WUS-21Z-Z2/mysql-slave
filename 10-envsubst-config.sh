SUBSTITUTED_FILE="/etc/mysql/conf.d/slave.cnf"
(echo "cat <<EOF"; cat "$SUBSTITUTED_FILE.template"; echo EOF) | sh >"$SUBSTITUTED_FILE"
cat "$SUBSTITUTED_FILE"
