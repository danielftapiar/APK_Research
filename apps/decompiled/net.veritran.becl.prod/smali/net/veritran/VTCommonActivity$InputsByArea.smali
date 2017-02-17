.class public Lnet/veritran/VTCommonActivity$InputsByArea;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputsByArea"
.end annotation


# instance fields
.field private data:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/VisualInputComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/veritran/VTCommonActivity;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 3133
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3134
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic access$800(Lnet/veritran/VTCommonActivity$InputsByArea;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity$InputsByArea;

    .prologue
    .line 3133
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method public getInputsByArea(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "area"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/VisualInputComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3137
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public print()V
    .locals 7

    .prologue
    .line 3168
    iget-object v4, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 3169
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3170
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3171
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 3172
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3173
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/VisualInputComponent;>;"
    const-string v4, "Inputs"

    invoke-static {v4, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3175
    const-string v4, "Inputs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3178
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/VisualInputComponent;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;Lnet/veritran/VisualInputComponent;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "comp"    # Lnet/veritran/VisualInputComponent;

    .prologue
    .line 3141
    iget-object v3, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3142
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    if-nez v1, :cond_0

    .line 3143
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3145
    .restart local v1    # "l":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3146
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/VisualInputComponent;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/VisualInputComponent;

    .line 3148
    .local v2, "vc":Lnet/veritran/VisualInputComponent;
    invoke-virtual {v2}, Lnet/veritran/VisualInputComponent;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/veritran/VisualInputComponent;->getComponentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3149
    const-string v3, "Inputs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lnet/veritran/VisualInputComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    .end local v2    # "vc":Lnet/veritran/VisualInputComponent;
    :goto_0
    return-void

    .line 3154
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3155
    iget-object v3, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity$InputsByArea;->print()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 3160
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 3164
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;

    .line 3165
    return-void
.end method
