.class Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "TsExtractor.java"


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

.field private final b:Lcom/google/android/exoplayer/util/ParsableBitArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V
    .locals 2

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(B)V

    .line 278
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 279
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 290
    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    .line 292
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {p1, v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v0

    .line 302
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 304
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 305
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 306
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    .line 309
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 311
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->d:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    if-nez v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    const/16 v4, 0x15

    invoke-interface {p3, v4}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v3, v2, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->d:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    .line 317
    :cond_1
    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    .line 319
    :goto_0
    if-lez v0, :cond_3

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 321
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v2

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 323
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v3

    .line 324
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 325
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    .line 328
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 329
    add-int/lit8 v1, v1, 0x5

    sub-int v1, v0, v1

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 332
    const/4 v0, 0x0

    .line 337
    sparse-switch v2, :sswitch_data_0

    .line 357
    :goto_1
    if-eqz v0, :cond_2

    .line 358
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->a:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 359
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-direct {v4, v5, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 361
    goto :goto_0

    .line 339
    :sswitch_0
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    const/16 v4, 0xf

    invoke-interface {p3, v4}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_1

    .line 343
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_1

    .line 349
    :sswitch_2
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    const/16 v0, 0x100

    invoke-interface {p3, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 350
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;

    const/16 v5, 0x1b

    invoke-interface {p3, v5}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;)V

    goto :goto_1

    .line 353
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->d:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    goto :goto_1

    .line 363
    :cond_3
    invoke-interface {p3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a()V

    .line 364
    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x15 -> :sswitch_3
        0x1b -> :sswitch_2
        0x81 -> :sswitch_1
        0x87 -> :sswitch_1
    .end sparse-switch
.end method
