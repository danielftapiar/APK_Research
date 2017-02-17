.class public Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:[Ljava/lang/String;

.field e:[Ljava/lang/String;

.field f:I

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->a:Ljava/lang/String;

    iput-object v3, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->b:Ljava/lang/String;

    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->e:[Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_3

    :cond_1
    iput-object v3, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    iput-object v3, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->e:[Ljava/lang/String;

    return-void

    :cond_2
    iget-object v2, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->d:[Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Luk/co/santander/santanderUK/famtec/android/parserXML/XMLNode;->e:[Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
