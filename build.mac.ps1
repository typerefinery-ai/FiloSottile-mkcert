# env CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 
go build -o ${PWD}/bin/darwin/mkcert -ldflags "-X main.Version=1.4.4"
if(!$?) {
    Write-Host "Build failed."
    exit 1
}
# dir ${PWD}/bin/
# mkdir data -ErrorAction SilentlyContinue
# ./bin/darwin/localcert -dataDir ${PWD}/data -acceptTerms -localCert ${PWD}/data/cert.pem -localKey ${PWD}/data/key.pem -forceRenew -debug
