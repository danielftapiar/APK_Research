.class final Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;
.super Landroid/widget/Filter;
.source "ServiciosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemsFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;->this$1:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;B)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;-><init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "performFiltering: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 188
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 189
    :cond_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;->this$1:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->access$1(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;)Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    move-result-object v4

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 191
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 192
    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;->this$1:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->originales:Ljava/util/List;

    .line 191
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .local v2, "sv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 194
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 190
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    return-object v0

    .line 190
    .end local v2    # "sv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 197
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prefix es "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v2    # "sv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "upper":Ljava/lang/String;
    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;->this$1:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->originales:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 208
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 209
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 201
    .local v1, "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    iget-object v5, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 202
    iget-object v5, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 203
    iget-object v5, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 217
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;->this$1:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->filtrados:Ljava/util/List;

    .line 220
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;->this$1:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->notifyDataSetChanged()V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;->this$1:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
