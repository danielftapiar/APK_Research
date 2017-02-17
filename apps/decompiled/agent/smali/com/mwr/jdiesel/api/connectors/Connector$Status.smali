.class public final enum Lcom/mwr/jdiesel/api/connectors/Connector$Status;
.super Ljava/lang/Enum;
.source "Connector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/connectors/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/connectors/Connector$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

.field public static final enum CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/connectors/Connector$Status;

.field public static final enum OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

.field public static final enum ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

.field public static final enum UNKNOWN:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

.field public static final enum UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ACTIVE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UNKNOWN:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    const-string v1, "UPDATING"

    invoke-direct {v0, v1, v6}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v7}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    const-string v1, "OFFLINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ACTIVE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UNKNOWN:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/connectors/Connector$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/connectors/Connector$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
