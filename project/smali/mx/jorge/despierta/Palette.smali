.class final Lmx/jorge/despierta/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# static fields
.field static final ACCENTS:[I

.field static final BACK:[I

.field static final IDS:[Ljava/lang/String;

.field static final NAMES:[Ljava/lang/String;


# instance fields
.field final accent:I

.field final bg:I

.field final card:I

.field final fg:I

.field final id:Ljava/lang/String;

.field final muted:I

.field final onAccent:I

.field final surface:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    const-string v0, "ocean"

    const-string v1, "peach"

    const-string v2, "forest"

    const-string v3, "miku"

    const-string v4, "violet"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmx/jorge/despierta/Palette;->IDS:[Ljava/lang/String;

    const-string v0, "Azul"

    const-string v1, "Durazno"

    const-string v2, "Bosque"

    const-string v3, "Turquesa"

    const-string v4, "Lavanda"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmx/jorge/despierta/Palette;->NAMES:[Ljava/lang/String;

    .line 6
    const v0, -0xede2d3

    const v1, -0xd6e3e7

    const v2, -0xefe4e8

    const v3, -0xefdcda

    const v4, -0xe4e8da

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmx/jorge/despierta/Palette;->BACK:[I

    const v0, -0x553401

    const/16 v1, -0x4262

    const v2, -0x46106a

    const v3, -0x821b22

    const v4, -0x304501

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmx/jorge/despierta/Palette;->ACCENTS:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appearance"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "palette"

    const-string v2, "forest"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmx/jorge/despierta/Palette;->id:Ljava/lang/String;

    move v0, v1

    move v2, v0

    :goto_0
    sget-object v3, Lmx/jorge/despierta/Palette;->IDS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lmx/jorge/despierta/Palette;->IDS:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmx/jorge/despierta/Palette;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmx/jorge/despierta/Palette;->id:Ljava/lang/String;

    const-string v3, "custom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmx/jorge/despierta/Palette;->BACK:[I

    aget v0, v0, v1

    const-string v4, "customBg"

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_2
    sget-object v0, Lmx/jorge/despierta/Palette;->BACK:[I

    aget v0, v0, v2

    :goto_1
    iput v0, p0, Lmx/jorge/despierta/Palette;->bg:I

    iget-object v0, p0, Lmx/jorge/despierta/Palette;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lmx/jorge/despierta/Palette;->ACCENTS:[I

    aget v0, v0, v1

    const-string v2, "customAccent"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    :cond_3
    sget-object p1, Lmx/jorge/despierta/Palette;->ACCENTS:[I

    aget p1, p1, v2

    :goto_2
    iput p1, p0, Lmx/jorge/despierta/Palette;->accent:I

    iget p1, p0, Lmx/jorge/despierta/Palette;->bg:I

    invoke-static {p1}, Lmx/jorge/despierta/Palette;->luma(I)D

    move-result-wide v4

    const-wide v6, 0x3fc6e978d4fdf3b6L    # 0.179

    cmpg-double p1, v4, v6

    if-gez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    const/4 p1, -0x1

    const/high16 v0, -0x1000000

    if-eqz v1, :cond_5

    move v2, p1

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    iput v2, p0, Lmx/jorge/despierta/Palette;->fg:I

    iget-object v2, p0, Lmx/jorge/despierta/Palette;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_8

    :cond_7
    move v1, p1

    goto :goto_5

    :cond_8
    :goto_4
    move v1, v0

    :goto_5
    iget v2, p0, Lmx/jorge/despierta/Palette;->bg:I

    const v3, 0x3d75c28f    # 0.06f

    invoke-static {v2, v1, v3}, Lmx/jorge/despierta/Palette;->blend(IIF)I

    move-result v2

    iput v2, p0, Lmx/jorge/despierta/Palette;->surface:I

    iget v2, p0, Lmx/jorge/despierta/Palette;->bg:I

    const v3, 0x3df5c28f    # 0.12f

    invoke-static {v2, v1, v3}, Lmx/jorge/despierta/Palette;->blend(IIF)I

    move-result v1

    iput v1, p0, Lmx/jorge/despierta/Palette;->card:I

    iget v1, p0, Lmx/jorge/despierta/Palette;->bg:I

    iget v2, p0, Lmx/jorge/despierta/Palette;->fg:I

    const v3, 0x3f3851ec    # 0.72f

    invoke-static {v1, v2, v3}, Lmx/jorge/despierta/Palette;->blend(IIF)I

    move-result v1

    iget v2, p0, Lmx/jorge/despierta/Palette;->bg:I

    invoke-static {v1, v2}, Lmx/jorge/despierta/Palette;->contrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_9

    goto :goto_6

    :cond_9
    iget v1, p0, Lmx/jorge/despierta/Palette;->fg:I

    :goto_6
    iput v1, p0, Lmx/jorge/despierta/Palette;->muted:I

    iget v1, p0, Lmx/jorge/despierta/Palette;->accent:I

    invoke-static {v1}, Lmx/jorge/despierta/Palette;->luma(I)D

    move-result-wide v1

    cmpl-double v1, v1, v6

    if-lez v1, :cond_a

    move p1, v0

    :cond_a
    iput p1, p0, Lmx/jorge/despierta/Palette;->onAccent:I

    return-void
.end method

.method static blend(IIF)I
    .locals 4

    .line 8
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method static contrast(II)D
    .locals 6

    .line 9
    invoke-static {p0}, Lmx/jorge/despierta/Palette;->luma(I)D

    move-result-wide v0

    invoke-static {p1}, Lmx/jorge/despierta/Palette;->luma(I)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    add-double/2addr v2, v4

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    add-double/2addr p0, v4

    div-double/2addr v2, p0

    return-wide v2
.end method

.method static hex(I)Ljava/lang/String;
    .locals 2

    .line 12
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v1, 0xffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "#%06X"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static linear(I)D
    .locals 4

    .line 10
    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    const-wide v2, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, v2

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method static luma(I)D
    .locals 6

    .line 11
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lmx/jorge/despierta/Palette;->linear(I)D

    move-result-wide v0

    const-wide v2, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Lmx/jorge/despierta/Palette;->linear(I)D

    move-result-wide v2

    const-wide v4, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Lmx/jorge/despierta/Palette;->linear(I)D

    move-result-wide v2

    const-wide v4, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method json()Ljava/lang/String;
    .locals 3

    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bg"

    iget v2, p0, Lmx/jorge/despierta/Palette;->bg:I

    invoke-static {v2}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "surface"

    iget v2, p0, Lmx/jorge/despierta/Palette;->surface:I

    invoke-static {v2}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "card"

    iget v2, p0, Lmx/jorge/despierta/Palette;->card:I

    invoke-static {v2}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "accent"

    iget v2, p0, Lmx/jorge/despierta/Palette;->accent:I

    invoke-static {v2}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "fg"

    iget v2, p0, Lmx/jorge/despierta/Palette;->fg:I

    invoke-static {v2}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "muted"

    iget v2, p0, Lmx/jorge/despierta/Palette;->muted:I

    invoke-static {v2}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "onAccent"

    iget v2, p0, Lmx/jorge/despierta/Palette;->onAccent:I

    invoke-static {v2}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "{}"

    return-object v0
.end method
