.class public Lcom/attify/sqliteapp/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field dConnector:Lcom/attify/sqliteapp/DatabaseConnector;

.field form:Lcom/attify/sqliteapp/Form;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    new-instance v0, Lcom/attify/sqliteapp/DatabaseConnector;

    invoke-direct {v0, p0}, Lcom/attify/sqliteapp/DatabaseConnector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/attify/sqliteapp/MainActivity;->dConnector:Lcom/attify/sqliteapp/DatabaseConnector;

    .line 20
    new-instance v0, Lcom/attify/sqliteapp/Form;

    invoke-direct {v0}, Lcom/attify/sqliteapp/Form;-><init>()V

    iput-object v0, p0, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    .line 16
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/high16 v3, 0x7f030000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->setContentView(I)V

    .line 27
    const/high16 v3, 0x7f080000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 28
    .local v5, "firstName":Landroid/widget/EditText;
    const v3, 0x7f080001

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 29
    .local v6, "lastName":Landroid/widget/EditText;
    const v3, 0x7f080002

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 30
    .local v7, "email":Landroid/widget/EditText;
    const v3, 0x7f080003

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 31
    .local v8, "phoneNumber":Landroid/widget/EditText;
    const v3, 0x7f080004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 32
    .local v18, "username":Landroid/widget/EditText;
    const v3, 0x7f080005

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    .line 34
    .local v19, "password":Landroid/widget/EditText;
    const v3, 0x7f080007

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 35
    .local v10, "register":Landroid/widget/Button;
    const v3, 0x7f080006

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 36
    .local v9, "login":Landroid/widget/Button;
    const v3, 0x7f080008

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/attify/sqliteapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 38
    .local v11, "submit":Landroid/widget/Button;
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 39
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 40
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 41
    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 42
    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 43
    new-instance v3, Lcom/attify/sqliteapp/MainActivity$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/attify/sqliteapp/MainActivity$1;-><init>(Lcom/attify/sqliteapp/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v3, Lcom/attify/sqliteapp/MainActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Lcom/attify/sqliteapp/MainActivity$2;-><init>(Lcom/attify/sqliteapp/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v12, Lcom/attify/sqliteapp/MainActivity$3;

    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v20, v11

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v12 .. v22}, Lcom/attify/sqliteapp/MainActivity$3;-><init>(Lcom/attify/sqliteapp/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method
