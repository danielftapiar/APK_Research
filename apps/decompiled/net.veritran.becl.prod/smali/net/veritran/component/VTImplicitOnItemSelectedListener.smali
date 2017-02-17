.class public Lnet/veritran/component/VTImplicitOnItemSelectedListener;
.super Ljava/lang/Object;
.source "VTImplicitOnItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTImplicitOnItemSelectedListener"


# instance fields
.field private cycle:Z

.field private elements:I

.field private viewToBeCalledOnChange:Lnet/veritran/component/view/VTPageIndicatorView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->cycle:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->elements:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->viewToBeCalledOnChange:Lnet/veritran/component/view/VTPageIndicatorView;

    .line 28
    return-void
.end method

.method public constructor <init>(ZILnet/veritran/component/view/VTPageIndicatorView;)V
    .locals 1
    .param p1, "cycle"    # Z
    .param p2, "elements"    # I
    .param p3, "piv"    # Lnet/veritran/component/view/VTPageIndicatorView;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->cycle:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->elements:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->viewToBeCalledOnChange:Lnet/veritran/component/view/VTPageIndicatorView;

    .line 32
    iput-boolean p1, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->cycle:Z

    .line 33
    iput p2, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->elements:I

    .line 34
    iput-object p3, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->viewToBeCalledOnChange:Lnet/veritran/component/view/VTPageIndicatorView;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/VTImplicitOnItemSelectedListener;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;I)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/VTImplicitOnItemSelectedListener;
    .param p1, "x1"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .param p2, "x2"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->onChange(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;I)V

    return-void
.end method

.method private onChange(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;I)V
    .locals 13
    .param p1, "item"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .param p2, "position"    # I

    .prologue
    .line 73
    const-string v10, "type"

    invoke-virtual {p1, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "type":Ljava/lang/String;
    const-string v10, "V"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 75
    const-string v10, "array"

    invoke-virtual {p1, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, "arrayId":I
    const-string v10, "VTImplicitOnItemSelectedListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VTImplicitOnItemSelectedListener:: arrayId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v10, "arrayRow"

    invoke-virtual {p1, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 78
    .local v3, "arrayRow":I
    const-string v10, "VTImplicitOnItemSelectedListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VTImplicitOnItemSelectedListener:: arrayRow ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->markRow(II)Z

    .line 81
    .end local v2    # "arrayId":I
    .end local v3    # "arrayRow":I
    :cond_0
    iget-object v10, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->viewToBeCalledOnChange:Lnet/veritran/component/view/VTPageIndicatorView;

    if-eqz v10, :cond_1

    if-eqz p1, :cond_1

    .line 83
    iget-object v10, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->viewToBeCalledOnChange:Lnet/veritran/component/view/VTPageIndicatorView;

    invoke-virtual {v10, p2}, Lnet/veritran/component/view/VTPageIndicatorView;->changeIndex(I)V

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 86
    .local v0, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    :try_start_0
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v10

    const-string v11, "targetvar"

    .line 87
    invoke-virtual {v10, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 86
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 88
    .local v7, "targetRegister":I
    const-string v10, "VTImplicitOnItemSelectedListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VTImplicitOnItemSelectedListener targetvar="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v10, "value"

    invoke-virtual {p1, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 92
    const-string v10, "VTImplicitOnItemSelectedListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VTImplicitOnItemSelectedListener value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move-object v6, v9

    .line 94
    .local v6, "parsedValue":Ljava/lang/String;
    const-string v10, "V"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 95
    const-string v10, "array"

    invoke-virtual {p1, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    .restart local v2    # "arrayId":I
    const-string v10, "arrayRow"

    .line 97
    invoke-virtual {p1, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 98
    .restart local v3    # "arrayRow":I
    new-instance v1, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v1, v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .end local v0    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .local v1, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    :try_start_1
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 100
    const/4 v6, 0x0

    .line 101
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 102
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 103
    invoke-static {v9, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 106
    :cond_3
    if-nez v6, :cond_6

    .line 107
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid row in array "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", row:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 119
    .end local v1    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v2    # "arrayId":I
    .end local v3    # "arrayRow":I
    .end local v6    # "parsedValue":Ljava/lang/String;
    .end local v7    # "targetRegister":I
    .end local v9    # "value":Ljava/lang/String;
    .restart local v0    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    const-string v10, "VTImplicitOnItemSelectedListener"

    const-string v11, "Catched exception empty (fortify)"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v10

    const-string v11, "onchange"

    invoke-virtual {v10, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "onChangeAction":Ljava/lang/String;
    const-string v10, "VTImplicitOnItemSelectedListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VTImplicitOnItemSelectedListener:: onChangeAction ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz v5, :cond_5

    .line 128
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v10

    invoke-virtual {v10}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v10

    new-instance v11, Lnet/veritran/component/VTImplicitOnItemSelectedListener$2;

    invoke-direct {v11, p0, v5}, Lnet/veritran/component/VTImplicitOnItemSelectedListener$2;-><init>(Lnet/veritran/component/VTImplicitOnItemSelectedListener;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    :cond_5
    return-void

    .end local v0    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v5    # "onChangeAction":Ljava/lang/String;
    .restart local v1    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .restart local v2    # "arrayId":I
    .restart local v3    # "arrayRow":I
    .restart local v6    # "parsedValue":Ljava/lang/String;
    .restart local v7    # "targetRegister":I
    .restart local v9    # "value":Ljava/lang/String;
    :cond_6
    move-object v0, v1

    .line 113
    .end local v1    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v2    # "arrayId":I
    .end local v3    # "arrayRow":I
    .restart local v0    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    :goto_3
    :try_start_2
    const-string v10, "VTImplicitOnItemSelectedListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VTImplicitOnClickListener parsedValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v10

    invoke-virtual {v10, v7, v6}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_2

    .line 118
    .end local v6    # "parsedValue":Ljava/lang/String;
    .end local v7    # "targetRegister":I
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 111
    .restart local v6    # "parsedValue":Ljava/lang/String;
    .restart local v7    # "targetRegister":I
    .restart local v9    # "value":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    invoke-static {v9, v10}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_3
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 43
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v3, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->cycle:Z

    if-eqz v3, :cond_0

    .line 45
    iget v3, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->elements:I

    rem-int v2, p3, v3

    .line 52
    .local v2, "position":I
    :goto_0
    const-string v3, "VTImplicitOnItemSelectedListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VTImplicitOnItemSelectedListener pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 56
    .local v0, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    move v1, v2

    .line 57
    .local v1, "pos":I
    new-instance v3, Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;

    invoke-direct {v3, p0, v1}, Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;-><init>(Lnet/veritran/component/VTImplicitOnItemSelectedListener;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 66
    invoke-virtual {v3, v4}, Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    return-void

    .line 49
    .end local v0    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v1    # "pos":I
    .end local v2    # "position":I
    :cond_0
    move v2, p3

    .restart local v2    # "position":I
    goto :goto_0
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
    .line 141
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
