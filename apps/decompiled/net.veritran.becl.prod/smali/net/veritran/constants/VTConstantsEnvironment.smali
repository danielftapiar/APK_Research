.class public Lnet/veritran/constants/VTConstantsEnvironment;
.super Ljava/lang/Object;
.source "VTConstantsEnvironment.java"


# static fields
.field public static final dhGs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final dhPs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final gatewayFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final gatewayHosts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final gatewayPaths:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final updateFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final updateHosts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final updatePaths:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->updateHosts:Ljava/util/Hashtable;

    .line 8
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->updatePaths:Ljava/util/Hashtable;

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->updateFiles:Ljava/util/Hashtable;

    .line 10
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->gatewayHosts:Ljava/util/Hashtable;

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->gatewayPaths:Ljava/util/Hashtable;

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->gatewayFiles:Ljava/util/Hashtable;

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->dhPs:Ljava/util/Hashtable;

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->dhGs:Ljava/util/Hashtable;

    .line 18
    sget-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->updateHosts:Ljava/util/Hashtable;

    const-string v1, "MP"

    const-string v2, "https://cseg.bancoestado.cl"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->updatePaths:Ljava/util/Hashtable;

    const-string v1, "MP"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->updateFiles:Ljava/util/Hashtable;

    const-string v1, "MP"

    const-string v2, "index.php"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->gatewayHosts:Ljava/util/Hashtable;

    const-string v1, "MP"

    const-string v2, "https://cseg.bancoestado.cl/vt-gateway.php"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->gatewayPaths:Ljava/util/Hashtable;

    const-string v1, "MP"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->gatewayFiles:Ljava/util/Hashtable;

    const-string v1, "MP"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->dhPs:Ljava/util/Hashtable;

    const-string v1, "MP"

    const-string v2, "b33251a3c2437f4ff010f8113b8e9d660fba94f1c292e71ff03762b686d21234418bce97fd63fa6ea9c8f7f52c5b5989abd2ef855fbfd9b8df6065dc7b585bb3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lnet/veritran/constants/VTConstantsEnvironment;->dhGs:Ljava/util/Hashtable;

    const-string v1, "MP"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
