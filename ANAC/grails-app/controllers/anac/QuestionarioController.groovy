package anac

import anac.Questao
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured

@Transactional(readOnly = true)
@Secured ('ROLE_USER')
class QuestionarioController {
    static int a = 0    
    def index() {
     def questoes = Questao.list()
        [questoes:questoes,a:a]
        
   }
}

