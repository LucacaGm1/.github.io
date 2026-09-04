# Utilitário para corrigir índice corrompido do Git no Windows
if (Test-Path .git\index) {
    $idx = Get-Item .git\index
    if ($idx.Length -eq 0) {
        Write-Host "Detectado índice zerado (.git/index = 0 bytes). Restaurando..." -ForegroundColor Yellow
        Remove-Item .git\index -Force
        git reset
        Write-Host "Índice restaurado com sucesso a partir do HEAD!" -ForegroundColor Green
    } else {
        Write-Host "Índice está saudável ($($idx.Length) bytes)." -ForegroundColor Cyan
        git status
    }
} else {
    git reset
    Write-Host "Índice recriado a partir do HEAD!" -ForegroundColor Green
}
