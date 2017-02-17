.class public final Lnet/veritran/function/parsers/ElementParser;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Z)Ljava/lang/String;
    .locals 16

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_0

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x0

    move v15, v2

    move v2, v3

    move v3, v15

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->a(Ljava/lang/String;I)Lnet/veritran/function/model/RegistryIndex;

    move-result-object v10

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getBeginIndex()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getEndIndex()I

    move-result v11

    :try_start_0
    const-string v7, "_"

    const/4 v5, 0x0

    sget-object v4, Lnet/veritran/function/model/Register;->ARRAY_NONE:Lnet/veritran/function/model/Array;

    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getRegister()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lnet/veritran/function/parsers/ElementParser;->a(C)Z

    move-result v12

    if-nez v12, :cond_5

    new-instance v2, Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;

    const/4 v4, 0x0

    const-string v5, "P002"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ElementParser#getElementType. Tipo de Elemento no es una Letra valida. Valor: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getRegister()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v4, v11, 0x1

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getProtocolType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_6
    move-object v6, v7

    :goto_4
    new-instance v7, Lnet/veritran/function/model/Register;

    invoke-direct {v7, v12, v5, v4, v6}, Lnet/veritran/function/model/Register;-><init>(CLjava/lang/String;Lnet/veritran/function/model/Array;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v7, v0, v1}, Lnet/veritran/function/parsers/ElementParser;->a(Lnet/veritran/function/model/Register;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_0
    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getRegister()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getRegister()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v6, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v6, 0x3b

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-lez v13, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v8, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_b

    add-int/lit8 v7, v13, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v15, v6

    move-object v6, v7

    move-object v7, v15

    :goto_5
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_8

    invoke-static {v7}, Lnet/veritran/function/parsers/ElementParser;->a(Ljava/lang/String;)Lnet/veritran/function/model/Array;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v6, v7

    move-object v7, v8

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :pswitch_1
    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getRegister()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getRegister()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :pswitch_2
    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getRegister()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v10}, Lnet/veritran/function/model/RegistryIndex;->getRegister()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x3b

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_9

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v8, v13, :cond_6

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_4

    :cond_9
    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_4

    :cond_a
    move v3, v2

    goto/16 :goto_1

    :cond_b
    move-object v15, v6

    move-object v6, v7

    move-object v7, v15

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lnet/veritran/function/model/Register;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;,
            Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;,
            Lnet/veritran/function/exception/VTFunctionParserException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getElementType()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;

    const-string v1, "P002"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ElementParser#retrieveValue. El String "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contiene un type de registro invalido y no contemplado en codigo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :sswitch_0
    if-eqz p2, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getRegisterIDasInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/adapters/StringFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getRegisterIDasInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/adapters/TokenReaderAdapter;->render(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v1, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getArray()Lnet/veritran/function/model/Array;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/function/model/Array;->getIdArray()I

    move-result v0

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getArray()Lnet/veritran/function/model/Array;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/function/model/Array;->countColumns()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getColumnCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getArray()Lnet/veritran/function/model/Array;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/function/model/Array;->countRows()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getRowCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getArray()Lnet/veritran/function/model/Array;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/function/model/Array;->isRowMarked()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_5
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserException;

    const-string v1, "P004"

    const-string v2, "ElementParser#retrieveValue. Array Adapter no dispone de una fila seleccionada."

    invoke-direct {v0, v4, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getArray()Lnet/veritran/function/model/Array;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/function/model/Array;->getRow()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserException;

    const-string v1, "P004"

    const-string v2, "ElementParser#retrieveValue. La posicion del Array solitada es mayor a los elementos que esta contiene."

    invoke-direct {v0, v4, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getArray()Lnet/veritran/function/model/Array;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/function/model/Array;->getCol()I

    move-result v0

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->render(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2
    if-nez p1, :cond_9

    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserException;

    const-string v1, "P004"

    const-string v2, "ElementParser#retrieveValue. Se llamo al metodo con ArrayReaderAdapter==null."

    invoke-direct {v0, v4, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getRegisterIDasInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->render(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getRegisterID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/function/model/Register;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/adapters/StringFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x46 -> :sswitch_2
        0x4b -> :sswitch_3
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;)Lnet/veritran/function/model/Array;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;,
            Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v0, Lnet/veritran/function/utils/StringTokenizer;

    const/16 v1, 0x3a

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/utils/StringTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v0}, Lnet/veritran/function/utils/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lnet/veritran/function/utils/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;

    const-string v1, "P001"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ElementParser#getArray. Error: el registro de tipo Array no tiene la cantidad necesaria de campos. ARRAY: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lnet/veritran/function/utils/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    invoke-virtual {v0}, Lnet/veritran/function/utils/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    move v5, v3

    move v4, v6

    move v2, v3

    move v6, v3

    :goto_0
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lnet/veritran/function/utils/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :cond_2
    new-instance v0, Lnet/veritran/function/model/Array;

    invoke-direct/range {v0 .. v6}, Lnet/veritran/function/model/Array;-><init>(IIIZZZ)V

    return-object v0

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v6

    move v4, v3

    move v2, v3

    move v6, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v5, v3

    move v4, v3

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    move v6, v3

    move v5, v3

    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;

    const-string v1, "P001"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SINTAX ERROR: Campo ROW - Tipo ARRAY. str: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;

    const-string v1, "P001"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SINTAX ERROR: Campo COL - Tipo ARRAY. str: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserWrongSyntaxException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;I)Lnet/veritran/function/model/RegistryIndex;
    .locals 9

    const/16 v8, 0x7b

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x7d

    const/4 v2, 0x1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x23

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v5, v4, 0x2

    if-le v1, v5, :cond_4

    add-int/lit8 v1, v4, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_4

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/veritran/function/parsers/ElementParser;->a(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v7, :cond_4

    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    new-instance v0, Lnet/veritran/function/model/RegistryIndex;

    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-direct {v0, p0, v4, v1, v2}, Lnet/veritran/function/model/RegistryIndex;-><init>(Ljava/lang/String;III)V

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v5, v4, 0x5

    if-le v1, v5, :cond_6

    add-int/lit8 v1, v4, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_6

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/veritran/function/parsers/ElementParser;->a(C)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v4, 0x2

    add-int/lit8 v5, v4, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/function/utils/NumberUtil;->isValidInteger(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    if-eqz v1, :cond_7

    new-instance v0, Lnet/veritran/function/model/RegistryIndex;

    add-int/lit8 v1, v4, 0x5

    const/4 v5, 0x2

    invoke-direct {v0, p0, v4, v1, v5}, Lnet/veritran/function/model/RegistryIndex;-><init>(Ljava/lang/String;III)V

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v5, v4, 0x2

    if-le v1, v5, :cond_8

    add-int/lit8 v1, v4, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_8

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/veritran/function/parsers/ElementParser;->a(C)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v7, :cond_8

    move v1, v2

    :goto_4
    if-eqz v1, :cond_3

    new-instance v0, Lnet/veritran/function/model/RegistryIndex;

    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v5, 0x3

    invoke-direct {v0, p0, v4, v1, v5}, Lnet/veritran/function/model/RegistryIndex;-><init>(Ljava/lang/String;III)V

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_4
.end method

.method private static a(C)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x46 -> :sswitch_2
        0x4b -> :sswitch_3
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public static internalParse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/veritran/function/parsers/ElementParser;->a(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/veritran/function/parsers/ElementParser;->a(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
