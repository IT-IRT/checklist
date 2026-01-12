<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checklist Operacional - Recuperação Veicular</title>
    <style>
        /* Estilos Gerais (CSS) */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #005a9e; /* Azul corporativo */
            padding-bottom: 15px;
            margin-bottom: 30px;
        }

        h1 {
            margin: 0;
            color: #004578;
            font-size: 24px;
        }

        .header-actions button {
            background-color: #d13438;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            font-size: 14px;
            transition: background 0.3s;
        }

        .header-actions button:hover {
            background-color: #a80000;
        }

        /* Grid de Processos */
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 25px;
        }

        /* Cartões dos Grupos */
        .process-group {
            background: #fff;
            border: 1px solid #e1dfdd;
            border-radius: 6px;
            padding: 20px;
            position: relative;
            box-shadow: 0 2px 4px rgba(0,0,0,0.05);
            transition: transform 0.2s;
        }

        .process-group:hover {
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-color: #0078d4;
        }

        .group-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
        }

        .group-title {
            font-size: 18px;
            font-weight: 600;
            color: #005a9e;
            margin: 0;
        }

        .btn-clear-group {
            background: none;
            border: 1px solid #ccc;
            color: #666;
            font-size: 12px;
            padding: 4px 8px;
            border-radius: 3px;
            cursor: pointer;
        }

        .btn-clear-group:hover {
            background-color: #f3f2f1;
            color: #000;
            border-color: #999;
        }

        /* Lista de Checkboxes */
        .task-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .task-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 12px;
            cursor: pointer;
        }

        .task-item input[type="checkbox"] {
            margin-top: 4px;
            margin-right: 12px;
            transform: scale(1.3); /* Checkbox um pouco maior */
            cursor: pointer;
        }

        .task-item label {
            cursor: pointer;
            line-height: 1.4;
            user-select: none; /* Impede seleção de texto ao clicar rápido */
        }

        /* Efeito de item concluído */
        .task-item input:checked + label {
            text-decoration: line-through;
            color: #a19f9d;
        }

        /* Rodapé */
        footer {
            margin-top: 40px;
            text-align: center;
            font-size: 12px;
            color: #605e5c;
        }
    </style>
</head>
<body>

    <div class="container">
        <header>
            <h1>Checklist de Processos - Recuperação Veicular</h1>
            <div class="header-actions">
                <button onclick="clearAll()" title="Limpar todos os campos da página">Limpar Tudo ↻</button>
            </div>
        </header>

        <div class="grid-container">

            <div class="process-group" id="group-briddge">
                <div class="group-header">
                    <h2 class="group-title">Evento Briddge</h2>
                    <button class="btn-clear-group" onclick="clearGroup('group-briddge')">Limpar Grupo</button>
                </div>
                <ul class="task-list">
                    <li class="task-item"><input type="checkbox" id="bri-1"><label for="bri-1">Inserir modo stolen com Flag "Asseguradora"</label></li>
                    <li class="task-item"><input type="checkbox" id="bri-2"><label for="bri-2">Verificar posição SalesForce</label></li>
                    <li class="task-item"><input type="checkbox" id="bri-3"><label for="bri-3">Solicitar posição TIM e TAN</label></li>
                    <li class="task-item"><input type="checkbox" id="bri-4"><label for="bri-4">Acionamento de pronta resposta</label></li>
                    <li class="task-item"><input type="checkbox" id="bri-5"><label for="bri-5">Subir caso no SharePoint</label></li>
                    <li class="task-item"><input type="checkbox" id="bri-6"><label for="bri-6">Atualizar Rabot</label></li>
                </ul>
            </div>

            <div class="process-group" id="group-retentativa">
                <div class="group-header">
                    <h2 class="group-title">Retentativa (Se s/ posição)</h2>
                    <button class="btn-clear-group" onclick="clearGroup('group-retentativa')">Limpar Grupo</button>
                </div>
                <ul class="task-list">
                    <li class="task-item"><input type="checkbox" id="ret-1"><label for="ret-1">Report de roubo (modo stolen)</label></li>
                    <li class="task-item"><input type="checkbox" id="ret-2"><label for="ret-2">Inserir novamente (descrição: retentativa Briddge, roubo ou furto)</label></li>
                    <li class="task-item"><input type="checkbox" id="ret-3"><label for="ret-3">Flegar "Asseguradora"</label></li>
                    <li class="task-item"><input type="checkbox" id="ret-4"><label for="ret-4">Cancelar caso</label></li>
                </ul>
            </div>

            <div class="process-group" id="group-procurados">
                <div class="group-header">
                    <h2 class="group-title">Procurados</h2>
                    <button class="btn-clear-group" onclick="clearGroup('group-procurados')">Limpar Grupo</button>
                </div>
                <ul class="task-list">
                    <li class="task-item"><input type="checkbox" id="proc-1"><label for="proc-1">Verificar casos procurados no SharePoint de eventos</label></li>
                    <li class="task-item"><input type="checkbox" id="proc-2"><label for="proc-2">Inserir caso no RTBIS (verificar posição/recuperação)</label></li>
                    <li class="task-item"><input type="checkbox" id="proc-3"><label for="proc-3">Verificar posição TIM</label></li>
                    <li class="task-item"><input type="checkbox" id="proc-4"><label for="proc-4">Verificar posição SalesForce</label></li>
                    <li class="task-item"><input type="checkbox" id="proc-5"><label for="proc-5">Alimentar SharePoint de informações novas</label></li>
                </ul>
            </div>

            <div class="process-group" id="group-real">
                <div class="group-header">
                    <h2 class="group-title">Evento Real</h2>
                    <button class="btn-clear-group" onclick="clearGroup('group-real')">Limpar Grupo</button>
                </div>
                <ul class="task-list">
                    <li class="task-item"><input type="checkbox" id="real-1"><label for="real-1">Acolhimento</label></li>
                    <li class="task-item"><input type="checkbox" id="real-2"><label for="real-2">Confirmação de dados</label></li>
                    <li class="task-item"><input type="checkbox" id="real-3"><label for="real-3">Inserir reporte de roubo</label></li>
                    <li class="task-item"><input type="checkbox" id="real-4"><label for="real-4">Acionamento PR por Whatsapp</label></li>
                    <li class="task-item"><input type="checkbox" id="real-5"><label for="real-5">Colher informações</label></li>
                    <li class="task-item"><input type="checkbox" id="real-6"><label for="real-6">Acionar PR SharePoint de acionamento</label></li>
                    <li class="task-item"><input type="checkbox" id="real-7"><label for="real-7">Subir caso no SharePoint</label></li>
                </ul>
            </div>

        </div>

        <footer>
            <p>Ferramenta de Apoio Operacional - Ituran Road Track</p>
        </footer>
    </div>

    <script>
        // Lógica JavaScript

        // 1. Ao carregar a página, restaura o estado dos checkboxes
        document.addEventListener('DOMContentLoaded', () => {
            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            
            checkboxes.forEach(chk => {
                // Recupera do LocalStorage
                const savedState = localStorage.getItem(chk.id);
                if (savedState === 'true') {
                    chk.checked = true;
                }

                // Adiciona evento para salvar quando clicar
                chk.addEventListener('change', () => {
                    localStorage.setItem(chk.id, chk.checked);
                });
            });
        });

        // 2. Função para limpar apenas um grupo específico
        function clearGroup(groupId) {
            const group = document.getElementById(groupId);
            if (!group) return;

            const checkboxes = group.querySelectorAll('input[type="checkbox"]');
            checkboxes.forEach(chk => {
                chk.checked = false;
                localStorage.setItem(chk.id, 'false'); // Atualiza a memória
            });
        }

        // 3. Função para limpar TUDO
        function clearAll() {
            if(confirm("Tem certeza que deseja limpar todas as marcações de todos os processos?")) {
                const checkboxes = document.querySelectorAll('input[type="checkbox"]');
                checkboxes.forEach(chk => {
                    chk.checked = false;
                    localStorage.removeItem(chk.id); // Remove da memória
                });
            }
        }
    </script>
</body>
</html>