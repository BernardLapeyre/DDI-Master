ipynb_filename=filename+'_master.ipynb';
texte=getfile(ipynb_filename);
nbre_lignes=size(texte,'*');

ipynb_outfile=filename+'_corrige.ipynb';
fichier_ipynb_outfile=fopen(ipynb_outfile,mode="w");
i=1;
dans_question=%f;
dans_reponse=%f;
dans_texte=%t;
while i <= nbre_lignes do
  // if (length(strindex(texte(i),'#ENDREPONSE')) > 0) && (length(strindex(texte(i),'\\n"",')) == 0) then
  //  //printf("%s\n",texte(i));
  //  fprintf(fichier_ipynb_outfile,'\t""   ""\n');
  // end
  if (length(strindex(texte(i),'#DEBUTQUESTION')) > 0) then
    dans_question=%t;dans_reponse=%f;dans_texte=%f;
    i=i+1;
  end
  if (length(strindex(texte(i),'#ENDQUESTION')) > 0) then
    dans_question=%f;dans_reponse=%f;dans_texte=%t;
    i=i+1;
  end
  if (length(strindex(texte(i),'#DEBUTREPONSE')) > 0) then
    dans_question=%f;dans_reponse=%t;dans_texte=%f;
    i=i+1;
  end
  if (length(strindex(texte(i),'#ENDREPONSE')) > 0) then
    dans_question=%f;dans_reponse=%f;dans_texte=%t;
    if (length(strindex(texte(i),'\\n"",')) == 0) then
      // python n'aime pas qu'paragraphe se termine avec un ',' donc on rajoute un "  ", ca a l'air de convenir ...
      fprintf(fichier_ipynb_outfile,'\t""   ""\n');
    end
    i=i+1;
  else
    if dans_reponse || dans_texte then
      fprintf(fichier_ipynb_outfile,"%s\n",texte(i));
    end
    i=i+1;
  end
end
fichier_ipynb_outfile.close[];
