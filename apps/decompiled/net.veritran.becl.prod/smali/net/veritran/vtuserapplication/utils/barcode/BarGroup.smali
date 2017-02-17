.class public Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;
.super Ljava/lang/Object;


# static fields
.field public static final MSG_CHARACTER:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

.field public static final START_CHARACTER:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

.field public static final STOP_CHARACTER:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

.field public static final UPC_EAN_CHECK:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

.field public static final UPC_EAN_GROUP:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

.field public static final UPC_EAN_GUARD:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

.field public static final UPC_EAN_LEAD:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

.field public static final UPC_EAN_SUPP:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

.field private static final a:Ljava/util/Hashtable;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    new-instance v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    const-string v1, "start-char"

    sget-object v2, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->START_CHARACTER:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    new-instance v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    const-string v1, "stop-char"

    sget-object v2, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->STOP_CHARACTER:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    new-instance v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    const-string v1, "msg-char"

    sget-object v2, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->MSG_CHARACTER:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    new-instance v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    const-string v1, "upc-ean-guard"

    sget-object v2, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->UPC_EAN_GUARD:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    new-instance v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    const-string v1, "upc-ean-lead"

    sget-object v2, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->UPC_EAN_LEAD:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    new-instance v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    const-string v1, "upc-ean-group"

    sget-object v2, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->UPC_EAN_GROUP:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    new-instance v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    const-string v1, "upc-ean-check"

    sget-object v2, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->UPC_EAN_CHECK:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    new-instance v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    const-string v1, "upc-ean-supp"

    sget-object v2, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->UPC_EAN_SUPP:Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->b:Ljava/lang/String;

    sget-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static byName(Ljava/lang/String;)Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;
    .locals 3

    sget-object v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid BarGroup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/barcode/BarGroup;->b:Ljava/lang/String;

    return-object v0
.end method
