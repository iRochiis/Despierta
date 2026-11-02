.class Lmx/jorge/despierta/AlarmActivity$JumpingMiku;
.super Landroid/view/View;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx/jorge/despierta/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JumpingMiku"
.end annotation


# instance fields
.field dst:Landroid/graphics/RectF;

.field final duration:[I

.field final order:[I

.field paint:Landroid/graphics/Paint;

.field src:Landroid/graphics/Rect;

.field start:J

.field strip:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->src:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->dst:Landroid/graphics/RectF;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->start:J

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->order:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->duration:[I

    .line 20
    invoke-static {p1}, Lmx/jorge/despierta/PetLibrary;->jump(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->strip:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x15e
        0x64
        0x64
        0x8c
        0x64
        0xfa
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 21
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->strip:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x410

    rem-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->duration:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->duration:[I

    aget v3, v3, v2

    if-lt v0, v3, :cond_1

    iget-object v3, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->duration:[I

    aget v3, v3, v2

    sub-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->order:[I

    aget v0, v0, v2

    iget-object v2, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->strip:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->strip:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->src:Landroid/graphics/Rect;

    mul-int v5, v0, v2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    invoke-virtual {v4, v5, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f6b851f    # 0.92f

    mul-float/2addr v2, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v1, v0

    mul-float/2addr v3, v0

    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->dst:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    div-float/2addr v6, v4

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->strip:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->dst:Landroid/graphics/RectF;

    iget-object v3, p0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x41

    invoke-virtual {p0, v0, v1}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->postInvalidateDelayed(J)V

    :cond_2
    return-void
.end method
