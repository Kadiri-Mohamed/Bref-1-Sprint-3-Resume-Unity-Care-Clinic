# Unity Care Clinic - Système de Gestion Hospitalière

## 📋 Aperçu du Projet

Ce projet consiste en la conception et la mise en place d'une base de données robuste pour la plateforme web d'Unity Care Clinic. La base de données sert de socle à un système de gestion hospitalière complet, permettant de centraliser et gérer de manière fiable et sécurisée les informations médicales et administratives.

## 🎯 Objectifs

- Développer une base de données performante et architecturée
- Centraliser la gestion des informations hospitalières
- Garantir l'intégrité et la sécurité des données médicales
- Fournir une base évolutive pour les développements futurs

## 🏗️ Architecture de la Base de Données

### Diagramme Entité-Relation (ERD)
![ERD Diagram](ERD.pdf)

### Tables Principales

| Table | Description | Colonnes Principales |
|-------|-------------|---------------------|
| **departments** | Départements médicaux | `department_id`, `department_name`, `location` |
| **doctors** | Médecins et spécialisations | `doctor_id`, `first_name`, `last_name`, `specialization`, `department_id` |
| **patients** | Informations des patients | `patient_id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `phone`, `email` |
| **rooms** | Chambres hospitalières | `room_id`, `room_number`, `room_type`, `availability` |
| **admissions** | Admissions des patients | `admission_id`, `patient_id`, `room_id`, `admission_date`, `discharge_date` |
| **appointments** | Rendez-vous médicaux | `appointment_id`, `doctor_id`, `patient_id`, `appointment_date`, `appointment_time` |
| **medications** | Médicaments disponibles | `medication_id`, `medication_name`, `dosage` |
| **prescriptions** | Prescriptions médicales | `prescription_id`, `patient_id`, `doctor_id`, `medication_id`, `prescription_date` |
| **staff** | Personnel administratif | `staff_id`, `first_name`, `last_name`, `job_title`, `department_id` |

