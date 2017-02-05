#
#
#
# data("UKDriverDeaths")
# dat <- as.data.frame(matrix(UKDriverDeaths, nrow=12))
#
# colnames(dat) <- seq(1969, length.out=ncol(dat))
#
# options <- Options$new()
#
# width  <- 20
# height <- 20
# samples <- 1
#
# times <- c()
#
# start <- proc.time()
#
# for (s in seq_len(samples)) {
#
#     table <- Table$new(options)
#
#     for (i in as.character(seq_len(width))) {
#         table$addColumn(i)
#     }
#
#     for (i in seq_len(height)) {
#         table$addRow(rowKey=i, list())
#     }
#
#     for (rowNo in seq_len(height)) {
#         rowValues <- runif(width)
#         names(rowValues) <- as.character(seq_len(width))
#         rowValues <- as.list(rowValues)
#         table$setRow(rowKey=rowNo, rowValues)
#     }
# }
#
# print(proc.time() - start)
#
# pb <- table$asProtoBuf()
#
# print(system.time({
#     pb <- table$asProtoBuf()
#     pb
# }))
#
# print(system.time({
#     pb <- table$asProtoBuf()
#     bin <- RProtoBuf::serialize(pb, NULL)
# }))
#
# print(system.time({
#
#     table <- Table$new(options)
#
#     for (i in as.character(seq_len(width))) {
#         table$addColumn(i)
#     }
#
#     for (i in seq_len(height)) {
#         table$addRow(rowKey=i, list())
#     }
#
#     pb <- RProtoBuf::read(jamovi.coms.ResultsElement, input=bin)
#     table$fromProtoBuf(pb)
# }))
#
#
