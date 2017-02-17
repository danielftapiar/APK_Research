.class public Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;
.super Ljava/lang/Object;
.source "VTDatabaseManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/utils/VTDatabaseManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VTDatabaseColumn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;
    }
.end annotation


# instance fields
.field isPrimary:Z

.field name:Ljava/lang/String;

.field type:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;
    .param p3, "isPrimary"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;->type:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    .line 34
    iput-boolean p3, p0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;->isPrimary:Z

    .line 35
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;->type:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    return-object v0
.end method

.method public getTypeForDatabase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lnet/veritran/utils/VTDatabaseManagement$1;->$SwitchMap$net$veritran$utils$VTDatabaseManagement$VTDatabaseColumn$Type:[I

    iget-object v1, p0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;->type:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    invoke-virtual {v1}, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    const-string v0, ""

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    const-string v0, "BLOB"

    goto :goto_0

    .line 54
    :pswitch_1
    const-string v0, "INTEGER"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "TEXT"

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;->isPrimary:Z

    return v0
.end method
