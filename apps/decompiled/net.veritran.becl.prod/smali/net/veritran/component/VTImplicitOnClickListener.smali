.class public Lnet/veritran/component/VTImplicitOnClickListener;
.super Ljava/lang/Object;
.source "VTImplicitOnClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTImplicitOnClickListener"


# instance fields
.field private cycle:Z

.field private elements:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/VTImplicitOnClickListener;->cycle:Z

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/VTImplicitOnClickListener;->elements:I

    .line 24
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "cycle"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/VTImplicitOnClickListener;->cycle:Z

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/VTImplicitOnClickListener;->elements:I

    .line 28
    iput-boolean p1, p0, Lnet/veritran/component/VTImplicitOnClickListener;->cycle:Z

    .line 29
    iput p2, p0, Lnet/veritran/component/VTImplicitOnClickListener;->elements:I

    .line 30
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "positionIndex"    # I
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
    .line 38
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/veritran/component/VTImplicitOnClickListener;->cycle:Z

    if-eqz v14, :cond_2

    .line 40
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/VTImplicitOnClickListener;->elements:I

    rem-int v10, p3, v14

    .line 47
    .local v10, "position":I
    :goto_0
    const-string v14, "VTImplicitOnClickListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VTImplicitOnClickListener pos="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p4

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 51
    .local v7, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v14, "type"

    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "type":Ljava/lang/String;
    const-string v14, "V"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 53
    const-string v14, "array"

    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 54
    .local v4, "arrayId":I
    const-string v14, "VTImplicitOnClickListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VTImplicitOnClickListener:: arrayId ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v14, "arrayRow"

    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 56
    .local v5, "arrayRow":I
    const-string v14, "VTImplicitOnClickListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VTImplicitOnClickListener:: arrayRow ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lnet/veritran/vtuserapplication/model/Model;->markRow(II)Z

    .line 59
    .end local v4    # "arrayId":I
    .end local v5    # "arrayRow":I
    :cond_0
    const/4 v2, 0x0

    .line 61
    .local v2, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    :try_start_0
    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v14

    const-string v15, "targetvar"

    .line 62
    invoke-virtual {v14, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 61
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 63
    .local v11, "targetRegister":I
    const-string v14, "VTImplicitOnClickListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VTImplicitOnClickListener targetvar="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v14, "value"

    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, "value":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 67
    const-string v14, "VTImplicitOnClickListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VTImplicitOnClickListener value="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object v9, v13

    .line 69
    .local v9, "parsedValue":Ljava/lang/String;
    const-string v14, "V"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 70
    const-string v14, "array"

    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 71
    .restart local v4    # "arrayId":I
    const-string v14, "arrayRow"

    .line 72
    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 71
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 73
    .restart local v5    # "arrayRow":I
    new-instance v3, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v3, v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .local v3, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    :try_start_1
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 75
    const/4 v9, 0x0

    .line 76
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 77
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 78
    invoke-static {v13, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 44
    .end local v3    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v4    # "arrayId":I
    .end local v5    # "arrayRow":I
    .end local v7    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v9    # "parsedValue":Ljava/lang/String;
    .end local v10    # "position":I
    .end local v11    # "targetRegister":I
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_2
    move/from16 v10, p3

    .restart local v10    # "position":I
    goto/16 :goto_0

    .line 81
    .restart local v3    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .restart local v4    # "arrayId":I
    .restart local v5    # "arrayRow":I
    .restart local v7    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .restart local v9    # "parsedValue":Ljava/lang/String;
    .restart local v11    # "targetRegister":I
    .restart local v12    # "type":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_3
    if-nez v9, :cond_7

    .line 82
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid row in array "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", row:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 94
    .end local v3    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v4    # "arrayId":I
    .end local v5    # "arrayRow":I
    .end local v9    # "parsedValue":Ljava/lang/String;
    .end local v11    # "targetRegister":I
    .end local v13    # "value":Ljava/lang/String;
    .restart local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    const-string v14, "VTImplicitOnClickListener"

    const-string v15, "Catched exception empty (fortify)"

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    const-string v14, "next"

    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "next":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 99
    invoke-static {v8, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 101
    :cond_5
    if-eqz v8, :cond_6

    .line 102
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v14

    check-cast v14, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v14, v8}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 115
    :cond_6
    return-void

    .end local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v8    # "next":Ljava/lang/String;
    .restart local v3    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .restart local v4    # "arrayId":I
    .restart local v5    # "arrayRow":I
    .restart local v9    # "parsedValue":Ljava/lang/String;
    .restart local v11    # "targetRegister":I
    .restart local v13    # "value":Ljava/lang/String;
    :cond_7
    move-object v2, v3

    .line 88
    .end local v3    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v4    # "arrayId":I
    .end local v5    # "arrayRow":I
    .restart local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    :goto_4
    :try_start_2
    const-string v14, "VTImplicitOnClickListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VTImplicitOnClickListener parsedValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v14

    invoke-virtual {v14, v11, v9}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_3

    .line 93
    .end local v9    # "parsedValue":Ljava/lang/String;
    .end local v11    # "targetRegister":I
    .end local v13    # "value":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 86
    .restart local v9    # "parsedValue":Ljava/lang/String;
    .restart local v11    # "targetRegister":I
    .restart local v13    # "value":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    goto :goto_4
.end method
