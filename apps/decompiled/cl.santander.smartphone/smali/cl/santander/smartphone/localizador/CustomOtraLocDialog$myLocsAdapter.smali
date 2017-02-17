.class Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomOtraLocDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/CustomOtraLocDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myLocsAdapter"
.end annotation


# instance fields
.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    .line 232
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 233
    iput-object p2, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->_list:Ljava/util/List;

    .line 234
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->_list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->_list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 254
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 263
    iget-object v2, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$1(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030045

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 264
    iget-object v2, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$1(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 267
    :cond_0
    const v2, 0x7f0601f9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 269
    .local v0, "lroot":Landroid/widget/LinearLayout;
    const v2, 0x7f0601fa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 271
    .local v1, "tv_direccion":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 272
    invoke-virtual {p0, p1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-object p2
.end method
