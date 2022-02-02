(require :asdf)
(asdf:initialize-source-registry
  `(:source-registry
     (:directory ,(uiop:getcwd))
     :inherit-configuration))
(require :cloud-run)
(cloud-run:run)
