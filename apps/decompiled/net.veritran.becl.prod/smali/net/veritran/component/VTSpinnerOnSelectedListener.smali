.class public Lnet/veritran/component/VTSpinnerOnSelectedListener;
.super Ljava/lang/Object;
.source "VTSpinnerOnSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTSpinnerOnSelectedListener"


# instance fields
.field private activity:Lnet/veritran/VTCommonActivity;

.field private spinnerInitialized:Z


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 2
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "VTSpinnerOnSelectedListener"

    const-string v1, "VTSpinnerOnSelectedListener()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lnet/veritran/component/VTSpinnerOnSelectedListener;->activity:Lnet/veritran/VTCommonActivity;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/VTSpinnerOnSelectedListener;->spinnerInitialized:Z

    .line 32
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v12, "VTSpinnerOnSelectedListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VTSpinnerOnSelectedListener pos="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p4

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 44
    .local v6, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v12, "type"

    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 45
    .local v10, "type":Ljava/lang/String;
    const-string v12, "V"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 46
    const-string v12, "array"

    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 47
    .local v3, "arrayId":I
    const-string v12, "VTSpinnerOnSelectedListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VTSpinnerOnSelectedListener:: arrayId ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v12, "arrayRow"

    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 50
    .local v4, "arrayRow":I
    const-string v12, "VTSpinnerOnSelectedListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VTSpinnerOnSelectedListener:: arrayRow ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Lnet/veritran/vtuserapplication/model/Model;->markRow(II)Z

    .line 55
    .end local v3    # "arrayId":I
    .end local v4    # "arrayRow":I
    :cond_0
    :try_start_0
    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v12

    const-string v13, "targetvar"

    .line 56
    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 55
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 57
    .local v9, "targetRegister":I
    const-string v12, "VTSpinnerOnSelectedListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VTSpinnerOnSelectedListener targetvar="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v12, "value"

    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 61
    const-string v12, "VTSpinnerOnSelectedListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VTSpinnerOnSelectedListener value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    move-object v8, v11

    .line 63
    .local v8, "parsedValue":Ljava/lang/String;
    const-string v12, "V"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 64
    const-string v12, "array"

    .line 65
    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 64
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 66
    .restart local v3    # "arrayId":I
    const-string v12, "arrayRow"

    .line 67
    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 66
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 68
    .restart local v4    # "arrayRow":I
    new-instance v2, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v2, v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 69
    .local v2, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 70
    const/4 v8, 0x0

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 72
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 73
    invoke-static {v11, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 76
    :cond_2
    if-nez v8, :cond_6

    .line 77
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid row in array "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", row:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v3    # "arrayId":I
    .end local v4    # "arrayRow":I
    .end local v8    # "parsedValue":Ljava/lang/String;
    .end local v9    # "targetRegister":I
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 90
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "VTSpinnerOnSelectedListener"

    const-string v13, "Catched exception empty (fortify)"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lnet/veritran/component/VTSpinnerOnSelectedListener;->spinnerInitialized:Z

    if-nez v12, :cond_7

    .line 95
    const-string v12, "VTSpinnerOnSelectedListener"

    const-string v13, "VTSpinnerOnSelectedListener initializing Spinner"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lnet/veritran/component/VTSpinnerOnSelectedListener;->spinnerInitialized:Z

    .line 104
    :cond_4
    :goto_2
    return-void

    .line 81
    .restart local v8    # "parsedValue":Ljava/lang/String;
    .restart local v9    # "targetRegister":I
    .restart local v11    # "value":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    :try_start_1
    invoke-static {v11, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 83
    :cond_6
    const-string v12, "VTSpinnerOnSelectedListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VTSpinnerOnSelectedListener parsedValue="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v12

    .line 87
    invoke-virtual {v12, v9, v8}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 98
    .end local v8    # "parsedValue":Ljava/lang/String;
    .end local v9    # "targetRegister":I
    .end local v11    # "value":Ljava/lang/String;
    :cond_7
    const-string v12, "next"

    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "next":Ljava/lang/String;
    const-string v12, "VTSpinnerOnSelectedListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activity.processAction("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz v7, :cond_4

    const-string v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/component/VTSpinnerOnSelectedListener;->activity:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v12, v7}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
