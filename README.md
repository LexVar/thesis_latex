# Thesis latex docs

Latex document of my thesis paper.
Based on the template of Prof. Rui Cruz.

## Details - [Dissertation Link](https://fenix.tecnico.ulisboa.pt/cursos/meic-t/dissertacao/1409728525633150)

Thesis to obtain the Master of Science Degree in __Information Systems and Computer Engineering__

__Title__: Secure Message Exchange System based on a SmartFusion2 SoC and its Evaluation as a HSM

__Author__: Alexandre Valente Rodrigues

__Supervisor__: Prof. Ricardo Jorge Fernandes Chaves

__Date__: May 2021

## [Demonstration](https://tecnico.ulisboa.pt/pt/noticias/tecnico-participa-em-projeto-de-desenvolvimento-de-redes-de-comunicacao-quanticas-para-a-defesa-europeia/)

The developed [implementation](https://github.com/LexVar/HSM_demo) uses a PKCS#11 interface to access the services of the HSM. It was demonstrated at the Estado-Maior-General das Forças Armadas (EMGFA) in Lisbon. [link](https://tecnico.ulisboa.pt/pt/noticias/tecnico-participa-em-projeto-de-desenvolvimento-de-redes-de-comunicacao-quanticas-para-a-defesa-europeia/)

## Compilation

A github CI is available to compile the latex files in a docker container and return the pdf as an artifact.
Alternatively it can be locally compiled.
1. If you the necessary latex packages just run `make pdf` to compile the pdf.
2. Alternately it can be compiled with docker by running `make`.

## Template Documentation

The Thesis-MSC LaTeX template can be used for Instituto Superior Técnico Master of Science thesis of DEI (or other departments), as it follows the regulations published by the Scientific Council of IST.

To start using, just open and modify your data in the following files:

1. Thesis-MSc-Preamble_commands.tex
Select the ‘main’ language of your thesis in the line that loads the package ‘babel’:
line.22
	\usepackage[main=english,portuguese]{babel}	
	or 
	\usepackage[english,main=portuguese]{babel}
	
The thesis document will then auto-magically modify all the adequate keywords, titles, captions, etc. according to the selected language.

Later, you may modify parameters or include other packages if deemed necessary.

To deliver a PDF version without annotations/todonotes, Track Changes, you need to modify the options as follows:

For TODO Notes, the following lines:
line.121/122
    % use the line with the 'disable' option for the TODO Notes
    \usepackage[textwidth=2cm, textsize=small, disable]{todonotes}
 
For Track Changes, the following lines: 
line.130/131
    % use the line with the 'final' option for the Track Changes
    \usepackage[authormarkup=superscript,authormarkuptext=id,markup=underlined,ulem={ULforem,normalbf},final]{changes}




2. Thesis-MSc-Front_Cover.tex
In this document insert your data (your full name, thesis titles, supervisors names, date, degree, etc.):

	\title{}
	\subtitle{}
	\author{}
	\degree{}
	\supervisor{}
	\othersupervisor{}
	\date{}

For Tracking changes, you can also replace the id of the collaborators, in the lines:

    \definechangesauthor[color=colorname]{id}

For a draft thesis (before examination) modify the following command to the value ‘false’:

	\finalthesis{false}

If it is for the final version (approved after examination) then modify the command to the value ‘true’:

	\finalthesis{true}

and include the full names of all the members of the Examination Committee (except the Supervisor):

	\chairperson{}
	\vogalone{}
	\vogaltwo{}
	\vogalthree{}

3. The content of your thesis will be written in the documents in folder ‘Chapters’
Do not modify the ‘header’ in all those documents, except the name of the document as it contains compilation directives.
 
If you need to add more Chapters, just create new .tex documents and add the header.
If you do not need that many Chapters in your thesis, just comment the lines in the main document:

  	‘Thesis-MSc-Main_Document.tex’

For example, if you do not need a 6th Chapter, comment the following lines:

	%Chapter 6
	\input{./Chapters/Thesis-MSc-Chapter_6.tex}
	% If Printing on DOUBLE SIDED pages, the second page should be white.
	% Otherwise, comment the following command:
	\cleardoublepage

4. Thesis-MSc-Bibliography.bib
This file is the default Bibliography database. 
If you are using Mendeley.com as Reference Manager, you can link the .bib file to your account in that swervice in order to keep the data automatically synchronized.
For those purposes, replace that file with your own file, and if the name is different, just modify the corresponding line in in the main document ‘Thesis-MSc-Main_Document.tex’:

	\bibliography{./Thesis-MSc-Bibliography}

#####################
