.class public Lnet/veritran/component/VTSelectorItem;
.super Ljava/lang/Object;
.source "VTSelectorItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d6f9f180c750b87L


# instance fields
.field private filter:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private onLostSelection:Ljava/lang/String;

.field private onSelect:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnet/veritran/component/VTSelectorItem;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/veritran/component/VTSelectorItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getOnLostSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/veritran/component/VTSelectorItem;->onLostSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getOnSelect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/veritran/component/VTSelectorItem;->onSelect:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/veritran/component/VTSelectorItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lnet/veritran/component/VTSelectorItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/veritran/component/VTSelectorItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lnet/veritran/component/VTSelectorItem;->filter:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lnet/veritran/component/VTSelectorItem;->image:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setOnLostSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "onLostSelection"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lnet/veritran/component/VTSelectorItem;->onLostSelection:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setOnSelect(Ljava/lang/String;)V
    .locals 0
    .param p1, "onSelect"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lnet/veritran/component/VTSelectorItem;->onSelect:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lnet/veritran/component/VTSelectorItem;->text:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnet/veritran/component/VTSelectorItem;->type:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lnet/veritran/component/VTSelectorItem;->value:Ljava/lang/String;

    .line 34
    return-void
.end method
