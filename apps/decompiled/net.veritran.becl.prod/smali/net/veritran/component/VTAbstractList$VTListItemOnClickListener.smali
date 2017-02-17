.class public Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;
.super Ljava/lang/Object;
.source "VTAbstractList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTAbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTListItemOnClickListener"
.end annotation


# instance fields
.field private activity:Lnet/veritran/VTCommonActivity;

.field private item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

.field final synthetic this$0:Lnet/veritran/component/VTAbstractList;


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTAbstractList;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;Lnet/veritran/VTCommonActivity;)V
    .locals 3
    .param p1, "this$0"    # Lnet/veritran/component/VTAbstractList;
    .param p2, "item"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .param p3, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->this$0:Lnet/veritran/component/VTAbstractList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "VTAbstractList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VTListItemOnClickListener( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "arrayRow"

    invoke-virtual {p2, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-object p3, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->activity:Lnet/veritran/VTCommonActivity;

    .line 117
    iput-object p2, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 118
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    const-string v9, "VTAbstractList"

    const-string v10, "Onclick"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v10, "type"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "type":Ljava/lang/String;
    const-string v9, "V"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 125
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v10, "array"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, "arrayId":I
    const-string v9, "VTAbstractList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VTListItemOnClickListener:: arrayId ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v10, "arrayRow"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 128
    .local v2, "arrayRow":I
    const-string v9, "VTAbstractList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VTListItemOnClickListener:: arrayRow ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->markRow(II)Z

    .line 132
    .end local v1    # "arrayId":I
    .end local v2    # "arrayRow":I
    :cond_0
    :try_start_0
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v9

    const-string v10, "targetvar"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 133
    .local v6, "targetRegister":I
    const-string v9, "VTAbstractList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VTListItemOnClickListener targetvar="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v10, "value"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 136
    const-string v9, "VTAbstractList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VTHorizontalItemOnClickListener value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object v5, v8

    .line 138
    .local v5, "parsedValue":Ljava/lang/String;
    const-string v9, "V"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 139
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v10, "array"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 140
    .restart local v1    # "arrayId":I
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v10, "arrayRow"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    .restart local v2    # "arrayRow":I
    new-instance v0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 142
    .local v0, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 143
    const/4 v5, 0x0

    .line 144
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 145
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 146
    invoke-static {v8, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 149
    :cond_2
    if-nez v5, :cond_5

    .line 150
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid row in array "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", row:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v1    # "arrayId":I
    .end local v2    # "arrayRow":I
    .end local v5    # "parsedValue":Ljava/lang/String;
    .end local v6    # "targetRegister":I
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 160
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "VTAbstractList"

    const-string v10, "Catched exception empty (fortify)"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->item:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v10, "next"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "next":Ljava/lang/String;
    iget-object v9, p0, Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;->activity:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v9, v4}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 164
    return-void

    .line 153
    .end local v4    # "next":Ljava/lang/String;
    .restart local v5    # "parsedValue":Ljava/lang/String;
    .restart local v6    # "targetRegister":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    :try_start_1
    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 155
    :cond_5
    const-string v9, "VTAbstractList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VTListItemOnClickListener parsedValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v9

    invoke-virtual {v9, v6, v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
