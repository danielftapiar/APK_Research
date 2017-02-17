.class public Lnet/veritran/component/VTChartComponent;
.super Lnet/veritran/component/VTUIComponent;
.source "VTChartComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/VTChartComponent$VTChartPieData;,
        Lnet/veritran/component/VTChartComponent$VTChartLineData;,
        Lnet/veritran/component/VTChartComponent$VTChartBarData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTChartAreaComponent"

.field private static final TICK_X_CONST:Ljava/lang/String; = "TICK_X_CONST"

.field private static final TICK_Y_CONST:Ljava/lang/String; = "TICK_Y_CONST"


# instance fields
.field private chartBarDataKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chartBarDataPerSerie:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/component/VTChartComponent$VTChartBarData;",
            ">;>;"
        }
    .end annotation
.end field

.field private chartLineDataKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chartLineDataPerSerie:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/component/VTChartComponent$VTChartLineData;",
            ">;>;"
        }
    .end annotation
.end field

.field private chartPieData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/component/VTChartComponent$VTChartPieData;",
            ">;"
        }
    .end annotation
.end field

.field private jsChart:Ljava/lang/String;

.field private jsDataset:Ljava/lang/String;

.field private tickX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tickY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vtChart:Lnet/veritran/component/view/VTChartComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTChartComponent;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 83
    new-instance v0, Lnet/veritran/component/view/VTChartComponentView;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTChartComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    iput-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    .line 84
    return-void
.end method

.method static synthetic access$300(Lnet/veritran/component/VTChartComponent;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTChartComponent;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lnet/veritran/component/VTChartComponent;->createJsFlotLibrary(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lnet/veritran/component/VTChartComponent;)Lnet/veritran/component/view/VTChartComponentView;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTChartComponent;

    .prologue
    .line 30
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    return-object v0
.end method

.method private createJsDatasetBar()V
    .locals 12

    .prologue
    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v3, "ds":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 314
    .local v1, "commaSeparator":Ljava/lang/String;
    const-string v8, "var dataset = ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v8, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 319
    .local v7, "serieDescription":Ljava/lang/String;
    const/4 v5, -0x1

    .line 320
    .local v5, "firstOrder":I
    const-string v4, ""

    .line 323
    .local v4, "firstColor":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v8, "{"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v8, "label: \""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v6, "sbData":Ljava/lang/StringBuilder;
    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v0, ""

    .line 340
    .local v0, "commaDataSeparator":Ljava/lang/String;
    iget-object v8, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataPerSerie:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/component/VTChartComponent$VTChartBarData;

    .line 342
    .local v2, "data":Lnet/veritran/component/VTChartComponent$VTChartBarData;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v10, "["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget v10, v2, Lnet/veritran/component/VTChartComponent$VTChartBarData;->x:F

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 345
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget v10, v2, Lnet/veritran/component/VTChartComponent$VTChartBarData;->y:F

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 347
    const-string v10, "]"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v0, ", "

    .line 351
    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    iget v10, v2, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieOrder:I

    if-ltz v10, :cond_1

    .line 353
    iget v5, v2, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieOrder:I

    .line 356
    :cond_1
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v2, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieColor:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v2, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieColor:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 358
    iget-object v4, v2, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieColor:Ljava/lang/String;

    goto :goto_1

    .line 361
    .end local v2    # "data":Lnet/veritran/component/VTChartComponent$VTChartBarData;
    :cond_2
    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v8, "data: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 370
    if-ltz v5, :cond_3

    .line 372
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v8, "bars: { order: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v8, " }"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_3
    if-eqz v4, :cond_4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 383
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v8, "color: \""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_4
    const-string v8, "}"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, " , "

    .line 392
    goto/16 :goto_0

    .line 394
    .end local v0    # "commaDataSeparator":Ljava/lang/String;
    .end local v4    # "firstColor":Ljava/lang/String;
    .end local v5    # "firstOrder":I
    .end local v6    # "sbData":Ljava/lang/StringBuilder;
    .end local v7    # "serieDescription":Ljava/lang/String;
    :cond_5
    const-string v8, "];"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTChartComponent;->jsDataset:Ljava/lang/String;

    .line 397
    return-void
.end method

.method private createJsDatasetLine()V
    .locals 12

    .prologue
    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v3, "ds":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 405
    .local v1, "commaSeparator":Ljava/lang/String;
    const-string v8, "var dataset = ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v8, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 410
    .local v7, "serieDescription":Ljava/lang/String;
    const/4 v5, -0x1

    .line 411
    .local v5, "firstOrder":I
    const-string v4, ""

    .line 414
    .local v4, "firstColor":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v8, "{"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v8, "label: \""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v6, "sbData":Ljava/lang/StringBuilder;
    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v0, ""

    .line 431
    .local v0, "commaDataSeparator":Ljava/lang/String;
    iget-object v8, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataPerSerie:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/component/VTChartComponent$VTChartLineData;

    .line 433
    .local v2, "data":Lnet/veritran/component/VTChartComponent$VTChartLineData;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v10, "["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget v10, v2, Lnet/veritran/component/VTChartComponent$VTChartLineData;->x:F

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 436
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget v10, v2, Lnet/veritran/component/VTChartComponent$VTChartLineData;->y:F

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 438
    const-string v10, "]"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v0, ", "

    .line 442
    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    iget v10, v2, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieOrder:I

    if-ltz v10, :cond_1

    .line 444
    iget v5, v2, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieOrder:I

    .line 447
    :cond_1
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v2, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieColor:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v2, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieColor:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 449
    iget-object v4, v2, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieColor:Ljava/lang/String;

    goto :goto_1

    .line 452
    .end local v2    # "data":Lnet/veritran/component/VTChartComponent$VTChartLineData;
    :cond_2
    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v8, "data: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 461
    if-ltz v5, :cond_3

    .line 463
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v8, "lines: { order: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    const-string v8, " }"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_3
    if-eqz v4, :cond_4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 474
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v8, "color: \""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_4
    const-string v8, "}"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, " , "

    .line 483
    goto/16 :goto_0

    .line 485
    .end local v0    # "commaDataSeparator":Ljava/lang/String;
    .end local v4    # "firstColor":Ljava/lang/String;
    .end local v5    # "firstOrder":I
    .end local v6    # "sbData":Ljava/lang/StringBuilder;
    .end local v7    # "serieDescription":Ljava/lang/String;
    :cond_5
    const-string v8, "];"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTChartComponent;->jsDataset:Ljava/lang/String;

    .line 488
    return-void
.end method

.method private createJsDatasetPie()V
    .locals 8

    .prologue
    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    .local v1, "ds":Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 660
    .local v0, "commaSeparator":Ljava/lang/String;
    const-string v5, "var dataset = ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget-object v5, p0, Lnet/veritran/component/VTChartComponent;->chartPieData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/veritran/component/VTChartComponent$VTChartPieData;

    .line 665
    .local v4, "pieData":Lnet/veritran/component/VTChartComponent$VTChartPieData;
    const/4 v3, -0x1

    .line 666
    .local v3, "firstOrder":I
    const-string v2, ""

    .line 669
    .local v2, "firstColor":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v6, "{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v6, "label: \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v6, v4, Lnet/veritran/component/VTChartComponent$VTChartPieData;->label:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v6, "data: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget v6, v4, Lnet/veritran/component/VTChartComponent$VTChartPieData;->data:F

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 686
    iget-object v6, v4, Lnet/veritran/component/VTChartComponent$VTChartPieData;->color:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lnet/veritran/component/VTChartComponent$VTChartPieData;->color:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 688
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string v6, "color: \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-object v6, v4, Lnet/veritran/component/VTChartComponent$VTChartPieData;->color:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_0
    const-string v6, "}"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    const-string v0, " , "

    .line 697
    goto :goto_0

    .line 699
    .end local v2    # "firstColor":Ljava/lang/String;
    .end local v3    # "firstOrder":I
    .end local v4    # "pieData":Lnet/veritran/component/VTChartComponent$VTChartPieData;
    :cond_1
    const-string v5, "];"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/veritran/component/VTChartComponent;->jsDataset:Ljava/lang/String;

    .line 702
    return-void
.end method

.method private createJsFlotLibrary(II)Ljava/lang/String;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$(\"#placeholder\").width(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'); $(\"#placeholder\").height(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "js":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTChartComponent;->jsChart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createJsGraphContainer()V
    .locals 48

    .prologue
    .line 810
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "type"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v38

    .line 812
    .local v38, "type":Ljava/lang/String;
    new-instance v30, Lorg/json/JSONObject;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONObject;-><init>()V

    .line 814
    .local v30, "optionsJSon":Lorg/json/JSONObject;
    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    .line 817
    .local v24, "optionSeriesJSon":Lorg/json/JSONObject;
    const-string v45, "bar"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_0

    const-string v45, "line"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_12

    .line 820
    :cond_0
    const-string v45, "bar"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_10

    .line 822
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->loadBarData()V

    .line 823
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->createJsDatasetBar()V

    .line 826
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 828
    .local v23, "optionSeriesBarJSon":Lorg/json/JSONObject;
    const-string v45, "show"

    const/16 v46, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 830
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "barwidth"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 832
    .local v5, "barWidth":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 836
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 837
    .local v6, "barWidthNumber":F
    const-string v45, "barWidth"

    float-to-double v0, v6

    move-wide/from16 v46, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 845
    .end local v6    # "barWidthNumber":F
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "barhorizontal"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    .line 847
    .local v10, "horizontal":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 849
    const-string v45, "horizontal"

    const-string v46, "true"

    move-object/from16 v0, v46

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 852
    :cond_2
    const-string v45, "bars"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    .end local v5    # "barWidth":Ljava/lang/String;
    .end local v10    # "horizontal":Ljava/lang/String;
    .end local v23    # "optionSeriesBarJSon":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    new-instance v28, Lorg/json/JSONObject;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    .line 885
    .local v28, "optionXaxisJSon":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "xlabel"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v39

    .line 887
    .local v39, "xLabel":Ljava/lang/String;
    if-eqz v39, :cond_4

    .line 889
    const-string v45, "axisLabel"

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string v45, "axisLabelUseCanvas"

    const/16 v46, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 891
    const-string v45, "axisLabelPadding"

    const/16 v46, 0xa

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 894
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "xtickrotationangle"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v40

    .line 896
    .local v40, "xTickRotation":Ljava/lang/String;
    if-eqz v40, :cond_5

    .line 900
    :try_start_3
    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v41

    .line 901
    .local v41, "xTickRotationNumber":F
    const-string v45, "rotateTicks"

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 910
    .end local v41    # "xTickRotationNumber":F
    :cond_5
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->size()I

    move-result v45

    if-lez v45, :cond_6

    .line 912
    const-string v45, "ticks"

    const-string v46, "TICK_X_CONST"

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 915
    :cond_6
    const-string v45, "xaxis"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 919
    new-instance v29, Lorg/json/JSONObject;

    invoke-direct/range {v29 .. v29}, Lorg/json/JSONObject;-><init>()V

    .line 921
    .local v29, "optionYaxisJSon":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "ylabel"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v42

    .line 923
    .local v42, "yLabel":Ljava/lang/String;
    if-eqz v42, :cond_7

    .line 925
    const-string v45, "axisLabel"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    const-string v45, "axisLabelUseCanvas"

    const/16 v46, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 927
    const-string v45, "axisLabelPadding"

    const/16 v46, 0x3

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 931
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "ytickrotationangle"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v43

    .line 933
    .local v43, "yTickRotation":Ljava/lang/String;
    if-eqz v43, :cond_8

    .line 937
    :try_start_5
    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v44

    .line 938
    .local v44, "yTickRotationNumber":F
    const-string v45, "rotateTicks"

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 947
    .end local v44    # "yTickRotationNumber":F
    :cond_8
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->size()I

    move-result v45

    if-lez v45, :cond_9

    .line 949
    const-string v45, "ticks"

    const-string v46, "TICK_Y_CONST"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 952
    :cond_9
    const-string v45, "yaxis"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "stack"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v35

    .line 957
    .local v35, "stack":Ljava/lang/String;
    if-eqz v35, :cond_a

    .line 959
    const-string v45, "stack"

    const-string v46, "true"

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1032
    .end local v28    # "optionXaxisJSon":Lorg/json/JSONObject;
    .end local v29    # "optionYaxisJSon":Lorg/json/JSONObject;
    .end local v35    # "stack":Ljava/lang/String;
    .end local v39    # "xLabel":Ljava/lang/String;
    .end local v40    # "xTickRotation":Ljava/lang/String;
    .end local v42    # "yLabel":Ljava/lang/String;
    .end local v43    # "yTickRotation":Ljava/lang/String;
    :cond_a
    :goto_4
    const-string v45, "series"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1036
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 1038
    .local v22, "optionLegendJSon":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "legendshow"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 1040
    .local v18, "legendShow":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 1042
    const-string v45, "show"

    const-string v46, "true"

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1045
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "legendcolumns"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v15

    .line 1047
    .local v15, "legendColumns":Ljava/lang/String;
    if-eqz v15, :cond_c

    .line 1051
    :try_start_7
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1052
    .local v16, "legendColumnsNumber":I
    const-string v45, "noColumns"

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1060
    .end local v16    # "legendColumnsNumber":I
    :cond_c
    :goto_5
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "legendposition"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v17

    .line 1062
    .local v17, "legendPosition":Ljava/lang/String;
    if-eqz v17, :cond_d

    .line 1064
    const-string v45, "position"

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    :cond_d
    const-string v45, "legend"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    .line 1072
    .local v21, "optionGridJSon":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "borderwidth"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v7

    .line 1074
    .local v7, "borderWidth":Ljava/lang/String;
    if-eqz v7, :cond_e

    .line 1079
    :try_start_9
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1080
    .local v8, "borderWidthNumber":I
    const-string v45, "borderWidth"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1088
    .end local v8    # "borderWidthNumber":I
    :cond_e
    :goto_6
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "backgroundcolor"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    .local v4, "backgroundColor":Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 1092
    const-string v45, "backgroundColor"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1095
    :cond_f
    const-string v45, "grid"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1113
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->jsDataset:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "var options = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ";"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "$.plot($(\"#placeholder\"), dataset, options);"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTChartComponent;->jsChart:Ljava/lang/String;

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    move-object/from16 v45, v0

    if-eqz v45, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->size()I

    move-result v45

    if-lez v45, :cond_18

    .line 1118
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    .local v33, "sbTick":Ljava/lang/StringBuilder;
    const-string v45, "["

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    const-string v37, ""

    .line 1122
    .local v37, "tickSeparator":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :goto_7
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_17

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/Float;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Float;->floatValue()F

    move-result v36

    .line 1124
    .local v36, "tick":F
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    const-string v45, "["

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1127
    const-string v45, ", \'"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    const-string v45, "\']"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const-string v37, ", "

    .line 1132
    goto :goto_7

    .line 839
    .end local v4    # "backgroundColor":Ljava/lang/String;
    .end local v7    # "borderWidth":Ljava/lang/String;
    .end local v15    # "legendColumns":Ljava/lang/String;
    .end local v17    # "legendPosition":Ljava/lang/String;
    .end local v18    # "legendShow":Ljava/lang/String;
    .end local v21    # "optionGridJSon":Lorg/json/JSONObject;
    .end local v22    # "optionLegendJSon":Lorg/json/JSONObject;
    .end local v33    # "sbTick":Ljava/lang/StringBuilder;
    .end local v36    # "tick":F
    .end local v37    # "tickSeparator":Ljava/lang/String;
    .restart local v5    # "barWidth":Ljava/lang/String;
    .restart local v23    # "optionSeriesBarJSon":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 841
    .local v9, "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Bar Width not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1167
    .end local v5    # "barWidth":Ljava/lang/String;
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .end local v23    # "optionSeriesBarJSon":Lorg/json/JSONObject;
    .end local v24    # "optionSeriesJSon":Lorg/json/JSONObject;
    .end local v30    # "optionsJSon":Lorg/json/JSONObject;
    .end local v38    # "type":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 1172
    :goto_8
    return-void

    .line 854
    .restart local v24    # "optionSeriesJSon":Lorg/json/JSONObject;
    .restart local v30    # "optionsJSon":Lorg/json/JSONObject;
    .restart local v38    # "type":Ljava/lang/String;
    :cond_10
    const-string v45, "line"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_3

    .line 856
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->loadLineData()V

    .line 857
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->createJsDatasetLine()V

    .line 860
    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    .line 862
    .local v25, "optionSeriesLineJSon":Lorg/json/JSONObject;
    const-string v45, "show"

    const/16 v46, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 864
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "linewidth"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v19

    .line 866
    .local v19, "lineWidth":Ljava/lang/String;
    if-eqz v19, :cond_11

    .line 870
    :try_start_b
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 871
    .local v20, "lineWidthNumber":F
    const-string v45, "lineWidth"

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v45

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    .line 879
    .end local v20    # "lineWidthNumber":F
    :cond_11
    :goto_9
    :try_start_c
    const-string v45, "lines"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 873
    :catch_2
    move-exception v9

    .line 875
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Line Width not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 903
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .end local v19    # "lineWidth":Ljava/lang/String;
    .end local v25    # "optionSeriesLineJSon":Lorg/json/JSONObject;
    .restart local v28    # "optionXaxisJSon":Lorg/json/JSONObject;
    .restart local v39    # "xLabel":Ljava/lang/String;
    .restart local v40    # "xTickRotation":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 905
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Rotate Ticks X not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 940
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v29    # "optionYaxisJSon":Lorg/json/JSONObject;
    .restart local v42    # "yLabel":Ljava/lang/String;
    .restart local v43    # "yTickRotation":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 942
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Rotate Ticks Y not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 962
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .end local v28    # "optionXaxisJSon":Lorg/json/JSONObject;
    .end local v29    # "optionYaxisJSon":Lorg/json/JSONObject;
    .end local v39    # "xLabel":Ljava/lang/String;
    .end local v40    # "xTickRotation":Ljava/lang/String;
    .end local v42    # "yLabel":Ljava/lang/String;
    .end local v43    # "yTickRotation":Ljava/lang/String;
    :cond_12
    const-string v45, "pie"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_a

    .line 964
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->loadPieData()V

    .line 965
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->createJsDatasetPie()V

    .line 968
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONObject;-><init>()V

    .line 970
    .local v26, "optionSeriesPieJSon":Lorg/json/JSONObject;
    const-string v45, "show"

    const/16 v46, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 972
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "showpielabel"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v34

    .line 974
    .local v34, "showPieLabel":Ljava/lang/String;
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 976
    .local v27, "optionSeriesPieLabelJSon":Lorg/json/JSONObject;
    if-eqz v34, :cond_13

    .line 978
    const-string v45, "show"

    const-string v46, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 981
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "labelradius"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v13

    .line 983
    .local v13, "labelRadius":Ljava/lang/String;
    if-eqz v13, :cond_14

    .line 987
    :try_start_d
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 988
    .local v14, "labelRadiusNumber":F
    const-string v45, "radius"

    float-to-double v0, v14

    move-wide/from16 v46, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1

    .line 996
    .end local v14    # "labelRadiusNumber":F
    :cond_14
    :goto_a
    :try_start_e
    const-string v45, "label"

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "radius"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v31

    .line 1001
    .local v31, "radius":Ljava/lang/String;
    if-eqz v31, :cond_15

    .line 1005
    :try_start_f
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    .line 1006
    .local v32, "radiusNumber":F
    const-string v45, "radius"

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1

    .line 1014
    .end local v32    # "radiusNumber":F
    :cond_15
    :goto_b
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v45

    const-string v46, "innerradius"

    invoke-virtual/range {v45 .. v46}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1

    move-result-object v11

    .line 1016
    .local v11, "innerradius":Ljava/lang/String;
    if-eqz v11, :cond_16

    .line 1020
    :try_start_11
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 1021
    .local v12, "innerradiusNumber":F
    const-string v45, "innerRadius"

    float-to-double v0, v12

    move-wide/from16 v46, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1

    .line 1029
    .end local v12    # "innerradiusNumber":F
    :cond_16
    :goto_c
    :try_start_12
    const-string v45, "pie"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 990
    .end local v11    # "innerradius":Ljava/lang/String;
    .end local v31    # "radius":Ljava/lang/String;
    :catch_5
    move-exception v9

    .line 992
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Label radius not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1008
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v31    # "radius":Ljava/lang/String;
    :catch_6
    move-exception v9

    .line 1010
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Radius not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1023
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v11    # "innerradius":Ljava/lang/String;
    :catch_7
    move-exception v9

    .line 1025
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Inner radius not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1054
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .end local v11    # "innerradius":Ljava/lang/String;
    .end local v13    # "labelRadius":Ljava/lang/String;
    .end local v26    # "optionSeriesPieJSon":Lorg/json/JSONObject;
    .end local v27    # "optionSeriesPieLabelJSon":Lorg/json/JSONObject;
    .end local v31    # "radius":Ljava/lang/String;
    .end local v34    # "showPieLabel":Ljava/lang/String;
    .restart local v15    # "legendColumns":Ljava/lang/String;
    .restart local v18    # "legendShow":Ljava/lang/String;
    .restart local v22    # "optionLegendJSon":Lorg/json/JSONObject;
    :catch_8
    move-exception v9

    .line 1056
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Legend columns not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1082
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v7    # "borderWidth":Ljava/lang/String;
    .restart local v17    # "legendPosition":Ljava/lang/String;
    .restart local v21    # "optionGridJSon":Lorg/json/JSONObject;
    :catch_9
    move-exception v9

    .line 1084
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string v45, "VTChartAreaComponent"

    const-string v46, "Border Width not a number"

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1135
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "backgroundColor":Ljava/lang/String;
    .restart local v33    # "sbTick":Ljava/lang/StringBuilder;
    .restart local v37    # "tickSeparator":Ljava/lang/String;
    :cond_17
    const-string v45, "]"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->jsChart:Ljava/lang/String;

    move-object/from16 v45, v0

    const-string v46, "\"TICK_X_CONST\""

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTChartComponent;->jsChart:Ljava/lang/String;

    .line 1140
    .end local v33    # "sbTick":Ljava/lang/StringBuilder;
    .end local v37    # "tickSeparator":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    move-object/from16 v45, v0

    if-eqz v45, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->size()I

    move-result v45

    if-lez v45, :cond_1a

    .line 1142
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    .restart local v33    # "sbTick":Ljava/lang/StringBuilder;
    const-string v45, "["

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    const-string v37, ""

    .line 1146
    .restart local v37    # "tickSeparator":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :goto_d
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_19

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/Float;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Float;->floatValue()F

    move-result v36

    .line 1148
    .restart local v36    # "tick":F
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    const-string v45, "["

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1151
    const-string v45, ", \'"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    const-string v45, "\']"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    const-string v37, ", "

    .line 1156
    goto :goto_d

    .line 1159
    .end local v36    # "tick":F
    :cond_19
    const-string v45, "]"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->jsChart:Ljava/lang/String;

    move-object/from16 v45, v0

    const-string v46, "\"TICK_Y_CONST\""

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTChartComponent;->jsChart:Ljava/lang/String;

    .line 1165
    .end local v33    # "sbTick":Ljava/lang/StringBuilder;
    .end local v37    # "tickSeparator":Ljava/lang/String;
    :cond_1a
    const-string v45, "VTChartAreaComponent"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "JS: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTChartComponent;->jsChart:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_8
.end method

.method private initChartArea()V
    .locals 5

    .prologue
    .line 792
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    const-string v2, "verticalalign"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "valign":Ljava/lang/String;
    const-string v1, "VTChartAreaComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/veritran/component/VTChartComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " valign="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    if-eqz v0, :cond_0

    .line 795
    iget-object v1, p0, Lnet/veritran/component/VTChartComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "verticalalign"

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->defineTextAlign()V

    .line 798
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->defineVerticalAlign()V

    .line 800
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->defineWidth()V

    .line 801
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->defineHeight()V

    .line 802
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->defineVisibility()V

    .line 803
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->defineMargins()V

    .line 804
    return-void
.end method

.method private loadBarData()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 167
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataPerSerie:Ljava/util/HashMap;

    .line 168
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataKeys:Ljava/util/List;

    .line 170
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    .line 171
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    .line 173
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    .line 175
    .local v2, "chartConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->getChartBarDatas()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;

    .line 177
    .local v6, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;
    const-string v10, "type"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, "itemType":Ljava/lang/String;
    if-eqz v7, :cond_7

    const-string v10, "V"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 180
    const-string v10, "array"

    .line 181
    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 180
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, "associatedArray":I
    new-instance v0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 186
    .local v0, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 187
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 189
    const-string v10, "filter"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "eval":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 193
    invoke-static {v4, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v4}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 203
    :cond_2
    :try_start_0
    new-instance v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;

    const/4 v10, 0x0

    invoke-direct {v3, p0, v10}, Lnet/veritran/component/VTChartComponent$VTChartBarData;-><init>(Lnet/veritran/component/VTChartComponent;Lnet/veritran/component/VTChartComponent$1;)V

    .line 205
    .local v3, "data":Lnet/veritran/component/VTChartComponent$VTChartBarData;
    const-string v10, "x"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->x:F

    .line 206
    const-string v10, "y"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->y:F

    .line 207
    const-string v10, "seriedescription"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    .line 208
    const-string v10, "seriecolor"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieColor:Ljava/lang/String;

    .line 210
    const-string v10, "serieorder"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "serieOrderStr":Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 213
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieOrder:I

    .line 216
    :cond_3
    const-string v10, "xtickvalue"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->xTickValue:Ljava/lang/String;

    .line 217
    const-string v10, "ytickvalue"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->yTickValue:Ljava/lang/String;

    .line 219
    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->xTickValue:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->xTickValue:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->x:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 221
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->x:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v13, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->xTickValue:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_4
    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->yTickValue:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->yTickValue:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 226
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v13, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->yTickValue:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_5
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 231
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataKeys:Ljava/util/List;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_6
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 239
    .end local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartBarData;
    .end local v8    # "serieOrderStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 241
    .local v5, "ex":Ljava/lang/NumberFormatException;
    const-string v10, "VTChartAreaComponent"

    const-string v12, "Number formatted uncorrectly"

    invoke-static {v10, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    .end local v0    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v1    # "associatedArray":I
    .end local v4    # "eval":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v9, 0x1

    .line 250
    .local v9, "shouldAdd":Z
    const-string v10, "filter"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .restart local v4    # "eval":Ljava/lang/String;
    if-eqz v4, :cond_8

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 254
    invoke-static {v4, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v4}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 257
    const/4 v9, 0x0

    .line 261
    :cond_8
    if-eqz v9, :cond_0

    .line 265
    :try_start_1
    new-instance v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;

    const/4 v10, 0x0

    invoke-direct {v3, p0, v10}, Lnet/veritran/component/VTChartComponent$VTChartBarData;-><init>(Lnet/veritran/component/VTChartComponent;Lnet/veritran/component/VTChartComponent$1;)V

    .line 267
    .restart local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartBarData;
    const-string v10, "x"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->x:F

    .line 268
    const-string v10, "y"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->y:F

    .line 269
    const-string v10, "seriedescription"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    .line 270
    const-string v10, "seriecolor"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieColor:Ljava/lang/String;

    .line 272
    const-string v10, "serieorder"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 273
    .restart local v8    # "serieOrderStr":Ljava/lang/String;
    if-eqz v8, :cond_9

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 275
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieOrder:I

    .line 278
    :cond_9
    const-string v10, "xtickvalue"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->xTickValue:Ljava/lang/String;

    .line 279
    const-string v10, "ytickvalue"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->yTickValue:Ljava/lang/String;

    .line 281
    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->xTickValue:Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->xTickValue:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->x:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 283
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->x:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v13, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->xTickValue:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_a
    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->yTickValue:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->yTickValue:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 288
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v13, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->yTickValue:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_b
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 293
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataKeys:Ljava/util/List;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_c
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartBarDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieDescription:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 299
    .end local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartBarData;
    .end local v8    # "serieOrderStr":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 301
    .restart local v5    # "ex":Ljava/lang/NumberFormatException;
    const-string v10, "VTChartAreaComponent"

    const-string v12, "Number formatted uncorrectly"

    invoke-static {v10, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    .end local v4    # "eval":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;
    .end local v7    # "itemType":Ljava/lang/String;
    .end local v9    # "shouldAdd":Z
    :cond_d
    return-void
.end method

.method private loadLineData()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 493
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataKeys:Ljava/util/List;

    .line 494
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataPerSerie:Ljava/util/HashMap;

    .line 496
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    .line 497
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    .line 499
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    .line 501
    .local v2, "chartConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->getChartLineDatas()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;

    .line 503
    .local v6, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;
    const-string v10, "type"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "itemType":Ljava/lang/String;
    if-eqz v7, :cond_7

    const-string v10, "V"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 506
    const-string v10, "array"

    .line 507
    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 506
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 508
    .local v1, "associatedArray":I
    new-instance v0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 512
    .local v0, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 513
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 515
    const-string v10, "filter"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "eval":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 519
    invoke-static {v4, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-static {v4}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 529
    :cond_2
    :try_start_0
    new-instance v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;

    const/4 v10, 0x0

    invoke-direct {v3, p0, v10}, Lnet/veritran/component/VTChartComponent$VTChartLineData;-><init>(Lnet/veritran/component/VTChartComponent;Lnet/veritran/component/VTChartComponent$1;)V

    .line 531
    .local v3, "data":Lnet/veritran/component/VTChartComponent$VTChartLineData;
    const-string v10, "x"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->x:F

    .line 532
    const-string v10, "y"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->y:F

    .line 533
    const-string v10, "seriedescription"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    .line 534
    const-string v10, "seriecolor"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieColor:Ljava/lang/String;

    .line 536
    const-string v10, "serieorder"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "serieOrderStr":Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 539
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieOrder:I

    .line 542
    :cond_3
    const-string v10, "xtickvalue"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->xTickValue:Ljava/lang/String;

    .line 543
    const-string v10, "ytickvalue"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->yTickValue:Ljava/lang/String;

    .line 545
    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->xTickValue:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->xTickValue:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->x:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 547
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->x:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v13, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->xTickValue:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_4
    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->yTickValue:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->yTickValue:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 552
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v13, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->yTickValue:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_5
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 557
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataKeys:Ljava/util/List;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_6
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 563
    .end local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartLineData;
    .end local v8    # "serieOrderStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 565
    .local v5, "ex":Ljava/lang/NumberFormatException;
    const-string v10, "VTChartAreaComponent"

    const-string v12, "Number formatted uncorrectly"

    invoke-static {v10, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 572
    .end local v0    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v1    # "associatedArray":I
    .end local v4    # "eval":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v9, 0x1

    .line 574
    .local v9, "shouldAdd":Z
    const-string v10, "filter"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 576
    .restart local v4    # "eval":Ljava/lang/String;
    if-eqz v4, :cond_8

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 578
    invoke-static {v4, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 579
    invoke-static {v4}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 581
    const/4 v9, 0x0

    .line 585
    :cond_8
    if-eqz v9, :cond_0

    .line 589
    :try_start_1
    new-instance v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;

    const/4 v10, 0x0

    invoke-direct {v3, p0, v10}, Lnet/veritran/component/VTChartComponent$VTChartLineData;-><init>(Lnet/veritran/component/VTChartComponent;Lnet/veritran/component/VTChartComponent$1;)V

    .line 591
    .restart local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartLineData;
    const-string v10, "x"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->x:F

    .line 592
    const-string v10, "y"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->y:F

    .line 593
    const-string v10, "seriedescription"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    .line 594
    const-string v10, "seriecolor"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieColor:Ljava/lang/String;

    .line 596
    const-string v10, "serieorder"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 597
    .restart local v8    # "serieOrderStr":Ljava/lang/String;
    if-eqz v8, :cond_9

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 599
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieOrder:I

    .line 602
    :cond_9
    const-string v10, "xtickvalue"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->xTickValue:Ljava/lang/String;

    .line 603
    const-string v10, "ytickvalue"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v12

    invoke-static {v10, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->yTickValue:Ljava/lang/String;

    .line 605
    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->xTickValue:Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->xTickValue:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->x:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 607
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickX:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->x:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v13, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->xTickValue:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_a
    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->yTickValue:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->yTickValue:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 612
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->tickY:Ljava/util/HashMap;

    iget v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v13, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->yTickValue:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_b
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 617
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataKeys:Ljava/util/List;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_c
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartLineDataPerSerie:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/veritran/component/VTChartComponent$VTChartLineData;->serieDescription:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 623
    .end local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartLineData;
    .end local v8    # "serieOrderStr":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 625
    .restart local v5    # "ex":Ljava/lang/NumberFormatException;
    const-string v10, "VTChartAreaComponent"

    const-string v12, "Number formatted uncorrectly"

    invoke-static {v10, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    .end local v4    # "eval":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;
    .end local v7    # "itemType":Ljava/lang/String;
    .end local v9    # "shouldAdd":Z
    :cond_d
    return-void
.end method

.method private loadPieData()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 707
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lnet/veritran/component/VTChartComponent;->chartPieData:Ljava/util/List;

    .line 709
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    .line 711
    .local v2, "chartConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->getChartPieDatas()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;

    .line 713
    .local v6, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;
    const-string v10, "type"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 714
    .local v7, "itemType":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v10, "V"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 716
    const-string v10, "array"

    .line 717
    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 716
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 718
    .local v1, "associatedArray":I
    new-instance v0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 722
    .local v0, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 723
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 725
    const-string v10, "filter"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "eval":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 729
    invoke-static {v4, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 730
    invoke-static {v4}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 739
    :cond_2
    :try_start_0
    new-instance v3, Lnet/veritran/component/VTChartComponent$VTChartPieData;

    const/4 v10, 0x0

    invoke-direct {v3, p0, v10}, Lnet/veritran/component/VTChartComponent$VTChartPieData;-><init>(Lnet/veritran/component/VTChartComponent;Lnet/veritran/component/VTChartComponent$1;)V

    .line 741
    .local v3, "data":Lnet/veritran/component/VTChartComponent$VTChartPieData;
    const-string v10, "label"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartPieData;->label:Ljava/lang/String;

    .line 742
    const-string v10, "data"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartPieData;->data:F

    .line 743
    const-string v10, "color"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartPieData;->color:Ljava/lang/String;

    .line 745
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartPieData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 747
    .end local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartPieData;
    :catch_0
    move-exception v5

    .line 749
    .local v5, "ex":Ljava/lang/NumberFormatException;
    const-string v10, "VTChartAreaComponent"

    const-string v11, "Number formatted uncorrectly"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 756
    .end local v0    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v1    # "associatedArray":I
    .end local v4    # "eval":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v8, 0x1

    .line 758
    .local v8, "shouldAdd":Z
    const-string v10, "filter"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 760
    .restart local v4    # "eval":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 762
    invoke-static {v4, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-static {v4}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 765
    const/4 v8, 0x0

    .line 769
    :cond_4
    if-eqz v8, :cond_0

    .line 773
    :try_start_1
    new-instance v3, Lnet/veritran/component/VTChartComponent$VTChartPieData;

    const/4 v10, 0x0

    invoke-direct {v3, p0, v10}, Lnet/veritran/component/VTChartComponent$VTChartPieData;-><init>(Lnet/veritran/component/VTChartComponent;Lnet/veritran/component/VTChartComponent$1;)V

    .line 775
    .restart local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartPieData;
    const-string v10, "label"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartPieData;->label:Ljava/lang/String;

    .line 776
    const-string v10, "data"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v3, Lnet/veritran/component/VTChartComponent$VTChartPieData;->data:F

    .line 777
    const-string v10, "color"

    invoke-virtual {v6, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lnet/veritran/component/VTChartComponent$VTChartPieData;->color:Ljava/lang/String;

    .line 779
    iget-object v10, p0, Lnet/veritran/component/VTChartComponent;->chartPieData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 781
    .end local v3    # "data":Lnet/veritran/component/VTChartComponent$VTChartPieData;
    :catch_1
    move-exception v5

    .line 783
    .restart local v5    # "ex":Ljava/lang/NumberFormatException;
    const-string v10, "VTChartAreaComponent"

    const-string v11, "Number formatted uncorrectly"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 788
    .end local v4    # "eval":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;
    .end local v7    # "itemType":Ljava/lang/String;
    .end local v8    # "shouldAdd":Z
    :cond_5
    return-void
.end method

.method private loadUrl()V
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    new-instance v1, Lnet/veritran/component/VTChartComponent$2;

    invoke-direct {v1, p0}, Lnet/veritran/component/VTChartComponent$2;-><init>(Lnet/veritran/component/VTChartComponent;)V

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTChartComponentView;->post(Ljava/lang/Runnable;)Z

    .line 1296
    return-void
.end method

.method private setWebViewClient()V
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTChartComponentView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1260
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    new-instance v1, Lnet/veritran/component/VTChartComponent$1;

    invoke-direct {v1, p0}, Lnet/veritran/component/VTChartComponent$1;-><init>(Lnet/veritran/component/VTChartComponent;)V

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTChartComponentView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1282
    return-void
.end method


# virtual methods
.method public componentWillFinish()V
    .locals 2

    .prologue
    .line 1322
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->componentWillFinish()V

    .line 1324
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTChartComponentView;->loadUrl(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTChartComponentView;->clearCache(Z)V

    .line 1329
    :cond_0
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTChartComponent;->checkEventType(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    invoke-virtual {v1, v0}, Lnet/veritran/component/view/VTChartComponentView;->clearCache(Z)V

    .line 101
    iget-object v1, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTChartComponentView;->clearHistory()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lnet/veritran/component/VTChartComponent;->initChartArea()V

    .line 104
    invoke-direct {p0}, Lnet/veritran/component/VTChartComponent;->setWebViewClient()V

    .line 105
    invoke-direct {p0}, Lnet/veritran/component/VTChartComponent;->loadUrl()V

    .line 107
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->refreshMeasure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 109
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 117
    :cond_1
    :goto_0
    return v0

    .line 111
    :cond_2
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->isVisibilityEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->updateVisibility()V

    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 126
    invoke-direct {p0}, Lnet/veritran/component/VTChartComponent;->initChartArea()V

    .line 127
    invoke-direct {p0}, Lnet/veritran/component/VTChartComponent;->createJsGraphContainer()V

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .local v1, "currentapiVersion":I
    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 133
    iget-object v2, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    invoke-virtual {v2}, Lnet/veritran/component/view/VTChartComponentView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 136
    :cond_0
    iget-object v2, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    invoke-virtual {v2}, Lnet/veritran/component/view/VTChartComponentView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 138
    iget-object v2, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    invoke-virtual {v2, v4}, Lnet/veritran/component/view/VTChartComponentView;->setBackgroundColor(I)V

    .line 142
    invoke-direct {p0}, Lnet/veritran/component/VTChartComponent;->setWebViewClient()V

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "bundleState":Landroid/os/Bundle;
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    invoke-virtual {p0}, Lnet/veritran/component/VTChartComponent;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/veritran/VTCommonActivity;->getBundleState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 154
    :cond_1
    if-eqz v0, :cond_2

    .line 156
    const-string v2, "VTChartAreaComponent"

    const-string v3, "Chart Bundle state NOT NULL"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    invoke-virtual {v2, v0}, Lnet/veritran/component/view/VTChartComponentView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_2
    invoke-direct {p0}, Lnet/veritran/component/VTChartComponent;->loadUrl()V

    goto :goto_0
.end method

.method public keepStatusesToBundle()Z
    .locals 1

    .prologue
    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public restoreStatusFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1316
    const-string v0, "VTChartAreaComponent"

    const-string v1, "Chart Component restore"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTChartComponentView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 1318
    return-void
.end method

.method public saveStatusToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1310
    const-string v0, "VTChartAreaComponent"

    const-string v1, "Chart Component SaveState"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTChartComponentView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 1312
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method
