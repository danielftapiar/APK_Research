.class Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;
.super Landroid/os/AsyncTask;
.source "CustomOtraLocDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/CustomOtraLocDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;-><init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v2, "mListAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v1, Landroid/location/Geocoder;

    iget-object v3, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$1(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, "gc":Landroid/location/Geocoder;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    const/16 v4, 0x14

    invoke-virtual {v1, v3, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 163
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
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
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/16 v3, 0x8

    .line 171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->lv_otra_loc:Landroid/widget/ListView;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$2(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->lv_otra_loc:Landroid/widget/ListView;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$2(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    invoke-direct {v1, v2, p1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;-><init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->lv_otra_loc:Landroid/widget/ListView;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$2(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    iget-object v1, v1, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->old:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ll_pb:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$0(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 184
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->lv_otra_loc:Landroid/widget/ListView;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$2(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ll_pb:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$0(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 150
    return-void
.end method
