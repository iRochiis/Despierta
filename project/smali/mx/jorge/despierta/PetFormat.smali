.class final Lmx/jorge/despierta/PetFormat;
.super Ljava/lang/Object;
.source "PetFormat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validate(IILjava/lang/String;[I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    const/16 v0, 0x600

    if-ne p0, v0, :cond_e

    const/16 v0, 0x750

    const/16 v1, 0x8f0

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_e

    .line 6
    :cond_0
    const-string v0, "image/png"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "image/webp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Formato permitido: PNG o WebP transparente"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_0
    if-eqz p3, :cond_d

    array-length p2, p3

    mul-int/2addr p0, p1

    if-ne p2, p0, :cond_d

    .line 8
    array-length p0, p3

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    const/4 v2, 0x1

    if-ge v0, p0, :cond_4

    aget v3, p3, v0

    ushr-int/lit8 v3, v3, 0x18

    if-nez v3, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move p0, p2

    :goto_2
    if-eqz p0, :cond_c

    .line 9
    const/4 p0, 0x7

    const/4 v0, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x6

    if-ne p1, v1, :cond_5

    const/16 p1, 0xb

    new-array p1, p1, [I

    aput v8, p1, p2

    aput v7, p1, v2

    aput v7, p1, v3

    aput v6, p1, v0

    aput v5, p1, v6

    aput v7, p1, v5

    aput v8, p1, v8

    aput v8, p1, p0

    aput v8, p1, v7

    aput v7, p1, v4

    const/16 p0, 0xa

    aput v7, p1, p0

    goto :goto_3

    :cond_5
    new-array p1, v4, [I

    aput v8, p1, p2

    aput v7, p1, v2

    aput v7, p1, v3

    aput v6, p1, v0

    aput v5, p1, v6

    aput v7, p1, v5

    aput v8, p1, v8

    aput v8, p1, p0

    aput v8, p1, v7

    .line 10
    :goto_3
    move p0, p2

    :goto_4
    array-length v0, p1

    if-ge p0, v0, :cond_b

    move v0, p2

    :goto_5
    aget v1, p1, p0

    if-ge v0, v1, :cond_a

    mul-int/lit16 v1, p0, 0xd0

    move v3, p2

    :goto_6
    add-int/lit8 v4, p0, 0x1

    mul-int/lit16 v5, v4, 0xd0

    if-ge v1, v5, :cond_8

    mul-int/lit16 v4, v0, 0xc0

    :goto_7
    add-int/lit8 v5, v0, 0x1

    mul-int/lit16 v5, v5, 0xc0

    if-ge v4, v5, :cond_7

    mul-int/lit16 v5, v1, 0x600

    add-int/2addr v5, v4

    aget v5, p3, v5

    ushr-int/lit8 v5, v5, 0x18

    const/16 v6, 0x14

    if-le v5, v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    const/16 v1, 0x64

    if-lt v3, v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Falta un fotograma en fila "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", posici\u00f3n "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 11
    :cond_b
    return-void

    .line 8
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "La hoja no contiene fondo transparente"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No se pudo leer la hoja completa"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Usa una hoja Codex v1 (1536 \u00d7 1872) o v2 (1536 \u00d7 2288)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
