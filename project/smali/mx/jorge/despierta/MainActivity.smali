.class public Lmx/jorge/despierta/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field static final PET_EXPORT_PROMPT:Ljava/lang/String; = "Quiero llevar mi mascota actual de Codex a la app Android Despierta. Busca mi mascota seleccionada y dame para descargar su hoja de sprites ORIGINAL completa, en PNG o WebP con transparencia. Despierta acepta hojas Codex v1 de 1536 \u00d7 1872 p\u00edxeles o v2 de 1536 \u00d7 2288 p\u00edxeles, de hasta 20 MB. Conserva todos los cuadros y su orden, especialmente la fila de salto (fila 5, \u00edndice 4; cinco cuadros de 192 \u00d7 208). No generes otra mascota, no la redibujes, no la ampl\u00edes ni entregues una captura, GIF o tira recortada. No cambies mi mascota seleccionada. Si tienes acceso al archivo original, entr\u00e9game un enlace de descarga. Si no tienes acceso, ind\u00edcamelo sin inventar un archivo."

.field public static volatile visible:Z


# instance fields
.field ACCENT:I

.field BG:I

.field FG:I

.field MUTED:I

.field appearanceSection:Ljava/lang/String;

.field audioLabel:Landroid/widget/TextView;

.field draft:Lorg/json/JSONObject;

.field editing:Z

.field editorPanel:Landroid/app/Dialog;

.field handler:Landroid/os/Handler;

.field volatile importingPet:Z

.field monitor:Landroid/widget/TextView;

.field name:Landroid/widget/EditText;

.field page:Landroid/widget/LinearLayout;

.field panelResize:Landroid/animation/ValueAnimator;

.field pending:I

.field screen:Ljava/lang/String;

.field shownRinging:Z

.field stage:Landroid/widget/FrameLayout;

.field final uiTick:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const/4 v0, 0x0

    sput-boolean v0, Lmx/jorge/despierta/MainActivity;->visible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 5
    const v0, -0xefe4e8

    iput v0, p0, Lmx/jorge/despierta/MainActivity;->BG:I

    const v0, -0x1a0c17

    iput v0, p0, Lmx/jorge/despierta/MainActivity;->FG:I

    const v0, -0x583e4f

    iput v0, p0, Lmx/jorge/despierta/MainActivity;->MUTED:I

    const v0, -0x46106a

    iput v0, p0, Lmx/jorge/despierta/MainActivity;->ACCENT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmx/jorge/despierta/MainActivity;->editing:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmx/jorge/despierta/MainActivity;->handler:Landroid/os/Handler;

    const-string v1, "home"

    iput-object v1, p0, Lmx/jorge/despierta/MainActivity;->screen:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lmx/jorge/despierta/MainActivity;->pending:I

    .line 48
    const-string v1, "colors"

    iput-object v1, p0, Lmx/jorge/despierta/MainActivity;->appearanceSection:Ljava/lang/String;

    .line 58
    iput-boolean v0, p0, Lmx/jorge/despierta/MainActivity;->importingPet:Z

    .line 66
    new-instance v1, Lmx/jorge/despierta/MainActivity$1;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MainActivity$1;-><init>(Lmx/jorge/despierta/MainActivity;)V

    iput-object v1, p0, Lmx/jorge/despierta/MainActivity;->uiTick:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lmx/jorge/despierta/MainActivity;->shownRinging:Z

    return-void
.end method

.method static synthetic lambda$button$5(Landroid/widget/Button;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x82

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic lambda$button$6(Landroid/widget/Button;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v0, 0x3f7851ec    # 0.97f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x46

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda45;-><init>(Landroid/widget/Button;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$compactRow$30(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$root$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$root$2(Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method


# virtual methods
.method about()V
    .locals 8

    .line 50
    const-string v0, "Acerca de"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmx/jorge/despierta/MainActivity;->root(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    const-string v0, "Despierta"

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "Versi\u00f3n 0.33"

    const/16 v3, 0xf

    invoke-virtual {p0, v2, v3}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "miku-bus-sleep.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const-string v4, "Miku dormida en un asiento de autob\u00fas"

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xdc

    invoke-virtual {p0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "Este proyecto es \u00fanicamente con la finalidad de poder ayudar a la gente para que puedan llegar a tiempo a sus destinos, agradezco tu confianza en el proyecto. Cualquier bug lo puedes reportar directamente en el repositorio"

    const/16 v4, 0x10

    invoke-virtual {p0, v2, v4}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "Creadores"

    const/16 v5, 0x12

    invoke-virtual {p0, v2, v5}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "Kusune y ChatGPT (Codex)"

    invoke-virtual {p0, v2, v4}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "Mapa y datos"

    invoke-virtual {p0, v2, v5}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "\u00a9 OpenStreetMap contributors \u00b7 Mapa con Leaflet. Estaciones: datos comunitarios, sujetos a cambios."

    invoke-virtual {p0, v2, v3}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "Mascotas"

    invoke-virtual {p0, v2, v5}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "Miku (Hatsune Miku), Dewey y Seedy. Las mascotas importadas pertenecen a sus respectivos autores. Despierta es un proyecto independiente, sin afiliaci\u00f3n oficial con OpenAI ni con los titulares de los personajes."

    invoke-virtual {p0, v2, v3}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda54;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Licencia de Leaflet"

    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 1

    .line 14
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method alarmScreenReady()Z
    .locals 4

    .line 60
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->fullScreenHelp()V

    return v3

    :cond_0
    const-string v1, "arrival_v7"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    new-instance v0, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Activa el aviso de llegada"

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Para mostrar la alarma con la pantalla bloqueada, permite las notificaciones de llegada con prioridad alta y en pantalla bloqueada."

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Cerrar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda47;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Abrir ajuste"

    invoke-virtual {v0, v2, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return v3
.end method

.method button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;
    .locals 4

    .line 13
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextAlignment(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    if-eqz p3, :cond_0

    new-instance p1, Lmx/jorge/despierta/Palette;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget p1, p1, Lmx/jorge/despierta/Palette;->onAccent:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lmx/jorge/despierta/MainActivity;->FG:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz p3, :cond_1

    iget p1, p0, Lmx/jorge/despierta/MainActivity;->ACCENT:I

    goto :goto_1

    :cond_1
    new-instance p1, Lmx/jorge/despierta/Palette;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget p1, p1, Lmx/jorge/despierta/Palette;->card:I

    :goto_1
    const/16 p3, 0x1c

    invoke-virtual {p0, p3}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lmx/jorge/despierta/MainActivity;->shape(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    const v3, 0x338fe5ae

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {p3, v3, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x14

    const/16 p3, 0xe

    invoke-virtual {v0, p1, p3, p1, p3}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x7

    invoke-virtual {p1, v2, p3, v2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda43;

    invoke-direct {p1, v0, p2}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda43;-><init>(Landroid/widget/Button;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method choosePet()V
    .locals 7

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lmx/jorge/despierta/PetLibrary;->IDS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    sget-object v4, Lmx/jorge/despierta/PetLibrary;->IDS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lmx/jorge/despierta/PetLibrary;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->custom(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Sin mascota"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->selected(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  \u2713"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v3, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v3, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Elige tu compa\u00f1ero"

    invoke-virtual {v3, v4}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v2, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda22;-><init>(Lmx/jorge/despierta/MainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method compactRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .line 39
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const v4, 0x338fe5ae

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v6, Lmx/jorge/despierta/Palette;

    invoke-direct {v6, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget v6, v6, Lmx/jorge/despierta/Palette;->surface:I

    const/16 v7, 0x12

    invoke-virtual {p0, v7}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lmx/jorge/despierta/MainActivity;->shape(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "   "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  \u203a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    iget p2, p0, Lmx/jorge/despierta/MainActivity;->MUTED:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x38

    invoke-virtual {p0, p3}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result p3

    invoke-direct {p2, v5, p3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p4}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p2, 0x3a

    invoke-virtual {p0, p2}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result p2

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result p3

    invoke-virtual {p0, p2}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result p2

    invoke-virtual {p1, v5, p3, v5, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method customPalette()V
    .locals 5

    .line 57
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Lmx/jorge/despierta/Palette;

    invoke-direct {v2, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const-string v1, "Color principal \u00b7 #RRGGBB"

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v1, "Color de fondo \u00b7 #RRGGBB"

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget v1, v2, Lmx/jorge/despierta/Palette;->accent:I

    invoke-static {v1}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v1, v2, Lmx/jorge/despierta/Palette;->bg:I

    invoke-static {v1}, Lmx/jorge/despierta/Palette;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0, v3}, Lmx/jorge/despierta/UiSheet;->input(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-static {p0, v4}, Lmx/jorge/despierta/UiSheet;->input(Landroid/content/Context;Landroid/widget/EditText;)V

    const-string v1, "Color principal"

    const/16 v2, 0xe

    invoke-virtual {p0, v1, v2}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "Fondo"

    invoke-virtual {p0, v1, v2}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Mi paleta"

    invoke-virtual {v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmx/jorge/despierta/UiSheet$Builder;->setView(Landroid/view/View;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v3, v4}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;-><init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->validate(Ljava/util/function/BooleanSupplier;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Cancelar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v3, v4}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;-><init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const-string v2, "Aplicar"

    invoke-virtual {v0, v2, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method dp(I)I
    .locals 1

    .line 7
    int-to-float p1, p1

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method editor()V
    .locals 25

    .line 26
    move-object/from16 v0, p0

    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v2, "vibration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "mode"

    const/4 v4, 0x2

    const/4 v6, 0x0

    if-nez v1, :cond_1

    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "Tu alarma"

    invoke-virtual {v0, v1, v6}, Lmx/jorge/despierta/MainActivity;->root(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    .line 27
    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    iget-object v7, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v8, "Mi parada"

    const-string v9, "name"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "placeName"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x17

    invoke-virtual {v0, v1, v7}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v7, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2316  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v8, "radius"

    const/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " m \u00b7 Cambiar ubicaci\u00f3n  \u203a"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0xe

    invoke-virtual {v0, v1, v7}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iget v8, v0, Lmx/jorge/despierta/MainActivity;->ACCENT:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v8, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v8, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda31;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 29
    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-static {v1}, Lmx/jorge/despierta/AlarmStore;->always(Lorg/json/JSONObject;)Z

    move-result v1

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move v10, v6

    :goto_1
    const-string v11, ", seleccionado"

    const-string v12, ""

    const/16 v13, 0xa

    const/high16 v14, 0x41600000    # 14.0f

    if-ge v10, v4, :cond_7

    if-nez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    const-string v16, "Siempre"

    const-string v17, "Determinadas horas"

    if-eqz v4, :cond_3

    move-object/from16 v5, v16

    goto :goto_3

    :cond_3
    move-object/from16 v5, v17

    :goto_3
    new-instance v15, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v15, v0, v4}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda34;-><init>(Lmx/jorge/despierta/MainActivity;Z)V

    if-ne v1, v4, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    move v7, v6

    :goto_4
    invoke-virtual {v0, v5, v15, v7}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinimumHeight(I)V

    invoke-virtual {v0, v13}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v13}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v5, v7, v6, v13, v6}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_5

    move-object/from16 v13, v16

    goto :goto_5

    :cond_5
    move-object/from16 v13, v17

    :goto_5
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v1, v4, :cond_6

    goto :goto_6

    :cond_6
    move-object v11, v12

    :goto_6
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x2a

    invoke-virtual {v0, v7}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v11

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v0, v7}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v12}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {v4, v11, v13, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v8, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x2

    const/16 v7, 0xe

    goto/16 :goto_1

    :cond_7
    iget-object v4, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 30
    if-nez v1, :cond_9

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Desde "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v7, "from"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lmx/jorge/despierta/AlarmStore;->time(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v5, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda35;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {v0, v4, v5, v6}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hasta "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v8, "until"

    const/16 v10, 0x59f

    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lmx/jorge/despierta/AlarmStore;->time(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda36;

    invoke-direct {v7, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda36;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {v0, v5, v7, v6}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object v5

    filled-new-array {v4, v5}, [Landroid/widget/Button;

    move-result-object v4

    move v5, v6

    :goto_7
    const/4 v7, 0x2

    if-ge v5, v7, :cond_8

    aget-object v7, v4, v5

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setMinimumHeight(I)V

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v0, v8}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v7, v10, v6, v15, v6}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x28

    invoke-virtual {v0, v15}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v15

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v6, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v0, v13}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v8}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v10, v15, v6, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    const/16 v13, 0xa

    const/high16 v14, 0x41600000    # 14.0f

    goto :goto_7

    :cond_8
    iget-object v4, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    :cond_9
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v23, "S"

    const-string v24, "D"

    const-string v18, "L"

    const-string v19, "M"

    const-string v20, "X"

    const-string v21, "J"

    const-string v22, "V"

    filled-new-array/range {v18 .. v24}, [Ljava/lang/String;

    move-result-object v4

    const-string v23, "S\u00e1bado"

    const-string v24, "Domingo"

    const-string v18, "Lunes"

    const-string v19, "Martes"

    const-string v20, "Mi\u00e9rcoles"

    const-string v21, "Jueves"

    const-string v22, "Viernes"

    filled-new-array/range {v18 .. v24}, [Ljava/lang/String;

    move-result-object v5

    move v7, v6

    :goto_8
    const/4 v8, 0x7

    const-string v10, "days"

    if-ge v7, v8, :cond_c

    const/4 v8, 0x1

    shl-int v13, v8, v7

    iget-object v8, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    and-int/2addr v8, v13

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    :cond_a
    move v8, v6

    :goto_9
    aget-object v10, v4, v7

    new-instance v14, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda37;

    invoke-direct {v14, v0, v13}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda37;-><init>(Lmx/jorge/despierta/MainActivity;I)V

    invoke-virtual {v0, v10, v14, v8}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v5, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v8, :cond_b

    move-object v8, v11

    goto :goto_a

    :cond_b
    move-object v8, v12

    :goto_a
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v10, v6, v6, v6, v6}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v10, v6}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v10, v6}, Landroid/widget/Button;->setMinimumWidth(I)V

    invoke-virtual {v10, v6}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v10, v6}, Landroid/widget/Button;->setMinimumHeight(I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v15

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v6

    move-object/from16 v19, v4

    invoke-virtual {v0, v14}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v8}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v13, v15, v6, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v19

    const/4 v6, 0x0

    goto :goto_8

    :cond_c
    iget-object v4, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lmx/jorge/despierta/AlarmStore;->days(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  \u25be"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    invoke-virtual {v0, v1, v4}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iget v4, v0, Lmx/jorge/despierta/MainActivity;->MUTED:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda38;

    invoke-direct {v4, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda38;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda39;

    invoke-direct {v4, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda39;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v5, "\u270e"

    const-string v6, "Nombre"

    invoke-virtual {v0, v5, v6, v1, v4}, Lmx/jorge/despierta/MainActivity;->compactRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 34
    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Sin sonido"

    goto :goto_b

    :cond_d
    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v3, "audioName"

    const-string v4, "Tono del tel\u00e9fono"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    new-instance v3, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda40;

    invoke-direct {v3, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda40;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v4, "\u266b"

    const-string v5, "Sonido"

    invoke-virtual {v0, v4, v5, v1, v3}, Lmx/jorge/despierta/MainActivity;->compactRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 35
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v3}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Lmx/jorge/despierta/Palette;

    invoke-direct {v4, v0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget v4, v4, Lmx/jorge/despierta/Palette;->surface:I

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lmx/jorge/despierta/MainActivity;->shape(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v4, "\u224b   Vibraci\u00f3n"

    invoke-virtual {v0, v4, v3}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x800013

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v5}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v3, v6, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x38

    invoke-virtual {v0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lmx/jorge/despierta/PillSwitch;

    invoke-direct {v3, v0}, Lmx/jorge/despierta/PillSwitch;-><init>(Landroid/content/Context;)V

    const-string v4, "Vibraci\u00f3n"

    invoke-virtual {v3, v4}, Lmx/jorge/despierta/PillSwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v3, v2}, Lmx/jorge/despierta/PillSwitch;->setChecked(Z)V

    new-instance v2, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda41;

    invoke-direct {v2, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda41;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {v3, v2}, Lmx/jorge/despierta/PillSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;
    iget-object v2, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;
    invoke-static {v0, v1, v2}, Lmx/jorge/despierta/VibrationEditor;->attach(Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/json/JSONObject;)V
    invoke-static {v0, v1, v2}, Lmx/jorge/despierta/JourneyOptions;->attach(Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/json/JSONObject;)V

    .line 36
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda42;

    invoke-direct {v2, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda42;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v3, "Probar"

    invoke-virtual {v0, v3, v2, v5}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x34

    invoke-virtual {v0, v4}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda32;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v3, "Guardar"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v2, v6}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/MainActivity;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Eliminar alarma"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, -0x4d56

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda33;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    :cond_e
    return-void
.end method

.method exists(Ljava/lang/String;)Z
    .locals 5

    .line 44
    invoke-static {p0}, Lmx/jorge/despierta/AlarmStore;->load(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method fullScreenHelp()V
    .locals 4

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Aviso en grande"

    invoke-virtual {v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pantalla completa: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v3, "permitida"

    goto :goto_2

    :cond_2
    const-string v3, "pendiente de permiso"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nAl llegar, Miku brincar\u00e1 junto al bot\u00f3n Ya despert\u00e9. Android decide si abre la pantalla autom\u00e1ticamente o muestra la notificaci\u00f3n; en ese caso t\u00f3cala para ver el aviso. En Redmi puede existir adem\u00e1s un ajuste de ventanas en pantalla bloqueada."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    const-string v2, "Cerrar"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v2, "Notificaciones"

    goto :goto_3

    :cond_3
    const-string v2, "Permitir"

    :goto_3
    new-instance v3, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda50;

    invoke-direct {v3, p0, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda50;-><init>(Lmx/jorge/despierta/MainActivity;Z)V

    invoke-virtual {v1, v2, v3}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method hasEnabled()Z
    .locals 5

    .line 22
    invoke-static {p0}, Lmx/jorge/despierta/AlarmStore;->load(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method home()V
    .locals 16

    .line 15
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v1, "Alarmas"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/MainActivity;->root(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    invoke-static/range {p0 .. p0}, Lmx/jorge/despierta/AlarmStore;->load(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0xe

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    const/16 v8, 0x12

    const/16 v9, 0x14

    const/4 v10, 0x0

    if-nez v3, :cond_0

    const-string v3, "No tienes alarmas\nPulsa \"+\" para a\u00f1adir una nueva alarma."

    invoke-virtual {v0, v3, v8}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    iget v8, v0, Lmx/jorge/despierta/MainActivity;->MUTED:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v11, 0x7

    invoke-virtual {v0, v11}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3, v11, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v5}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v6, v7, v10, v5, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, v0, Lmx/jorge/despierta/MainActivity;->stage:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 16
    :cond_0
    move v3, v10

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_7

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v9}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v0, v8}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v9}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v0, v8}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v12, v13, v14, v15, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v9, "enabled"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget v13, v0, Lmx/jorge/despierta/MainActivity;->BG:I

    iget v14, v0, Lmx/jorge/despierta/MainActivity;->ACCENT:I

    const v15, 0x3e23d70a    # 0.16f

    invoke-static {v13, v14, v15}, Lmx/jorge/despierta/Palette;->blend(IIF)I

    move-result v13

    goto :goto_1

    :cond_1
    new-instance v13, Lmx/jorge/despierta/Palette;

    invoke-direct {v13, v0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget v13, v13, Lmx/jorge/despierta/Palette;->surface:I

    :goto_1
    const/16 v14, 0x1c

    invoke-virtual {v0, v14}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Lmx/jorge/despierta/MainActivity;->shape(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xa

    invoke-virtual {v0, v14}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v13, v10, v10, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v14, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v14, "Mi parada"

    const-string v15, "name"

    invoke-virtual {v11, v15, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v5, 0x18

    invoke-virtual {v0, v14, v5}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v14

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v14, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lmx/jorge/despierta/PillSwitch;

    invoke-direct {v8, v0}, Lmx/jorge/despierta/PillSwitch;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activar "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lmx/jorge/despierta/PillSwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v8, v6}, Lmx/jorge/despierta/PillSwitch;->setChecked(Z)V

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v11}, Lmx/jorge/despierta/AlarmStore;->always(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Siempre"

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "from"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lmx/jorge/despierta/AlarmStore;->time(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u2013 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "until"

    const/16 v9, 0x59f

    invoke-virtual {v11, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lmx/jorge/despierta/AlarmStore;->time(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v0, v6, v5}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "days"

    const/16 v7, 0x7f

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lmx/jorge/despierta/AlarmStore;->days(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nA "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "radius"

    const/16 v7, 0x3e8

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " m \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mode"

    invoke-virtual {v11, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "vibration"

    if-nez v7, :cond_4

    invoke-virtual {v11, v9, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Solo vibraci\u00f3n"

    goto :goto_4

    :cond_3
    const-string v6, "Solo aviso en pantalla"

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v10

    :goto_3
    invoke-virtual {v11, v9, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Sonido y vibraci\u00f3n"

    goto :goto_4

    :cond_6
    const-string v6, "Solo sonido"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0, v11}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda11;-><init>(Lmx/jorge/despierta/MainActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, v0, v11}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda12;-><init>(Lmx/jorge/despierta/MainActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v5, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, v0, v8, v11}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;-><init>(Lmx/jorge/despierta/MainActivity;Lmx/jorge/despierta/PillSwitch;Lorg/json/JSONObject;)V

    invoke-virtual {v8, v5}, Lmx/jorge/despierta/PillSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    add-int/lit8 v3, v3, 0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    const/16 v8, 0x12

    const/16 v9, 0x14

    goto/16 :goto_0

    .line 18
    :cond_7
    :goto_5
    new-instance v3, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda14;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v5, "+"

    invoke-virtual {v0, v5, v3, v2}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object v3

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setMinimumHeight(I)V

    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    const-string v5, "Nueva alarma"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x38

    invoke-virtual {v0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v6

    const/16 v8, 0x55

    invoke-direct {v5, v7, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    const/16 v8, 0x26

    invoke-virtual {v0, v8}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v5, v10, v10, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, v0, Lmx/jorge/despierta/MainActivity;->stage:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v5

    const/16 v7, 0x8

    invoke-virtual {v3, v6, v7, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 19
    sget-object v3, Lmx/jorge/despierta/TripService;->status:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lmx/jorge/despierta/MainActivity;->monitor:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->monitor:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->monitor:Landroid/widget/TextView;

    iget v3, v0, Lmx/jorge/despierta/MainActivity;->MUTED:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lmx/jorge/despierta/MainActivity;->monitor:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-boolean v1, Lmx/jorge/despierta/TripService;->active:Z

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lmx/jorge/despierta/MainActivity;->hasEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda15;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v3, "Revisar programación"

    invoke-virtual {v0, v3, v1, v2}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    :cond_9
    sget-boolean v1, Lmx/jorge/despierta/TripService;->ringing:Z

    if-eqz v1, :cond_a

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda16;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v3, "Ya despert\u00e9"

    invoke-virtual {v0, v3, v1, v2}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 20
    :cond_a
    return-void
.end method

.method importPet(Landroid/net/Uri;)V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lmx/jorge/despierta/MainActivity;->importingPet:Z

    if-eqz v0, :cond_0

    const-string p1, "Espera a que termine la importaci\u00f3n"

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmx/jorge/despierta/MainActivity;->importingPet:Z

    const-string v0, "Validando mascota\u2026"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, p1}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda48;-><init>(Lmx/jorge/despierta/MainActivity;Landroid/net/Uri;)V

    const-string p1, "ImportPet"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$about$37$mx-jorge-despierta-MainActivity()V
    .locals 5

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "LEAFLET-LICENSE.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v2, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v2, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Leaflet \u00b7 Licencia"

    invoke-virtual {v2, v3}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    const-string v2, "Cerrar"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "No se pudo abrir la licencia"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method synthetic lambda$alarmScreenReady$58$mx-jorge-despierta-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 60
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.provider.extra.CHANNEL_ID"

    const-string v0, "arrival_v7"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$choosePet$52$mx-jorge-despierta-MainActivity(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 56
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "pet"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->personalization()V

    return-void
.end method

.method synthetic lambda$customPalette$53$mx-jorge-despierta-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#[0-9a-fA-F]{6}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "Usa colores como #B9EF96"

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$customPalette$54$mx-jorge-despierta-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 57
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string p4, "palette"

    const-string v0, "custom"

    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const-string p4, "customAccent"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const-string p3, "customBg"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->personalization()V

    return-void
.end method

.method synthetic lambda$editor$14$mx-jorge-despierta-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->openMap()V

    return-void
.end method

.method synthetic lambda$editor$15$mx-jorge-despierta-MainActivity(Z)V
    .locals 1

    .line 29
    const-string v0, "always"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V

    return-void
.end method

.method synthetic lambda$editor$16$mx-jorge-despierta-MainActivity()V
    .locals 1

    .line 30
    const-string v0, "from"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->pickTime(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$editor$17$mx-jorge-despierta-MainActivity()V
    .locals 1

    .line 30
    const-string v0, "until"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->pickTime(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$editor$18$mx-jorge-despierta-MainActivity(I)V
    .locals 2

    .line 31
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v1, "days"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V

    return-void
.end method

.method synthetic lambda$editor$19$mx-jorge-despierta-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 32
    const/4 p1, 0x2

    if-ge p2, p1, :cond_1

    if-nez p2, :cond_0

    const/16 p1, 0x1f

    goto :goto_0

    :cond_0
    const/16 p1, 0x7f

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "days"

    invoke-virtual {p0, p2, p1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V

    :cond_1
    return-void
.end method

.method synthetic lambda$editor$20$mx-jorge-despierta-MainActivity(Landroid/view/View;)V
    .locals 3

    .line 32
    new-instance p1, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Repetir"

    invoke-virtual {p1, v0}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object p1

    const-string v0, "Todos los d\u00edas"

    const-string v1, "Elegir con los c\u00edrculos"

    const-string v2, "Lunes a viernes"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda46;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method synthetic lambda$editor$21$mx-jorge-despierta-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 33
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "Mi parada"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "name"

    invoke-virtual {p0, p2, p1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V

    return-void
.end method

.method synthetic lambda$editor$22$mx-jorge-despierta-MainActivity()V
    .locals 3

    .line 33
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Nombre de la alarma"

    invoke-virtual {v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmx/jorge/despierta/UiSheet$Builder;->setView(Landroid/view/View;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    new-instance v2, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, v0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda44;-><init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/EditText;)V

    const-string v0, "Listo"

    invoke-virtual {v1, v0, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Cancelar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method synthetic lambda$editor$23$mx-jorge-despierta-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 34
    const-string p1, "mode"

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "audio"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "audioName"

    const-string p2, "Tono del tel\u00e9fono"

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "audio/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x41

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method synthetic lambda$editor$24$mx-jorge-despierta-MainActivity()V
    .locals 4

    .line 34
    new-instance v0, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Sonido"

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Tono de alarma del tel\u00e9fono"

    const-string v2, "Elegir audio local"

    const-string v3, "Sin sonido"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda51;

    invoke-direct {v2, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda51;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method synthetic lambda$editor$25$mx-jorge-despierta-MainActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 35
    const-string p1, "vibration"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$editor$26$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->testAlarm()V

    return-void
.end method

.method synthetic lambda$editor$27$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->saveAlarm()V

    return-void
.end method

.method synthetic lambda$editor$28$mx-jorge-despierta-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    iget-object p1, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string p2, "id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmx/jorge/despierta/AlarmStore;->remove(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->sync()V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    return-void
.end method

.method synthetic lambda$editor$29$mx-jorge-despierta-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 37
    new-instance p1, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u00bfEliminar esta alarma?"

    invoke-virtual {p1, v0}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object p1

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda0;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v1, "Eliminar"

    invoke-virtual {p1, v1, v0}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object p1

    const-string v0, "Cancelar"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method synthetic lambda$fullScreenHelp$59$mx-jorge-despierta-MainActivity(ZLandroid/content/DialogInterface;I)V
    .locals 2

    .line 61
    const-string p2, "package:"

    :try_start_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p3, v0, :cond_0

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p1, Landroid/content/Intent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$home$10$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->newAlarm()V

    return-void
.end method

.method synthetic lambda$home$11$mx-jorge-despierta-MainActivity()V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->permissions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->sync()V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    :cond_0
    return-void
.end method

.method synthetic lambda$home$12$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    return-void
.end method

.method synthetic lambda$home$13$mx-jorge-despierta-MainActivity()V
    .locals 4

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmx/jorge/despierta/TripService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "DISMISS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda49;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$home$7$mx-jorge-despierta-MainActivity(Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 0

    .line 16
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method synthetic lambda$home$8$mx-jorge-despierta-MainActivity(Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 0

    .line 16
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method synthetic lambda$home$9$mx-jorge-despierta-MainActivity(Lmx/jorge/despierta/PillSwitch;Lorg/json/JSONObject;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 17
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->permissions()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p2, -0x1

    iput p2, p0, Lmx/jorge/despierta/MainActivity;->pending:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmx/jorge/despierta/PillSwitch;->setChecked(Z)V

    return-void

    :cond_0
    :try_start_0
    const-string p1, "enabled"

    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p0, p2}, Lmx/jorge/despierta/AlarmStore;->put(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->sync()V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method synthetic lambda$importPet$55$mx-jorge-despierta-MainActivity()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Mascota importada"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->personalization()V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$importPet$56$mx-jorge-despierta-MainActivity(Ljava/lang/Exception;)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "No se pudo importar"

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "Elige otra hoja Codex"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object p1

    const-string v0, "Entendido"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$importPet$57$mx-jorge-despierta-MainActivity(Landroid/net/Uri;)V
    .locals 8

    .line 59
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Mi mascota"

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_display_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\.[^.]+$"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {p0, p1, v1}, Lmx/jorge/despierta/PetLibrary;->importPet(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda17;-><init>(Lmx/jorge/despierta/MainActivity;)V

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_4
    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda18;-><init>(Lmx/jorge/despierta/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_2
    iput-boolean v0, p0, Lmx/jorge/despierta/MainActivity;->importingPet:Z

    return-void

    :goto_3
    iput-boolean v0, p0, Lmx/jorge/despierta/MainActivity;->importingPet:Z

    throw p1
.end method

.method synthetic lambda$lockedHelp$60$mx-jorge-despierta-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 62
    const-string p1, "package:"

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lmx/jorge/despierta/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lmx/jorge/despierta/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onBackPressed$61$mx-jorge-despierta-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    return-void
.end method

.method synthetic lambda$options$33$mx-jorge-despierta-MainActivity()V
    .locals 1

    .line 49
    const-string v0, "colors"

    iput-object v0, p0, Lmx/jorge/despierta/MainActivity;->appearanceSection:Ljava/lang/String;

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->personalization()V

    return-void
.end method

.method synthetic lambda$options$34$mx-jorge-despierta-MainActivity()V
    .locals 1

    .line 49
    const-string v0, "pet"

    iput-object v0, p0, Lmx/jorge/despierta/MainActivity;->appearanceSection:Ljava/lang/String;

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->personalization()V

    return-void
.end method

.method synthetic lambda$options$35$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->phoneSettings()V

    return-void
.end method

.method synthetic lambda$options$36$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->about()V

    return-void
.end method

.method synthetic lambda$personalization$44$mx-jorge-despierta-MainActivity(Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "palette"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->personalization()V

    return-void
.end method

.method synthetic lambda$personalization$45$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->customPalette()V

    return-void
.end method

.method synthetic lambda$personalization$46$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->choosePet()V

    return-void
.end method

.method synthetic lambda$personalization$47$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->choosePet()V

    return-void
.end method

.method synthetic lambda$personalization$48$mx-jorge-despierta-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "image/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$personalization$49$mx-jorge-despierta-MainActivity()V
    .locals 3

    .line 55
    new-instance v0, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Trae tu mascota"

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Elige la hoja completa descargada de Codex: PNG o WebP transparente, v1 (1536 \u00d7 1872) o v2 (1536 \u00d7 2288), hasta 20 MB. Una foto normal, captura de pantalla o GIF no sirve. Se comprueban el tama\u00f1o, la transparencia y los fotogramas."

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Cancelar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda2;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Elegir archivo"

    invoke-virtual {v0, v2, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method synthetic lambda$personalization$50$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->petExportPrompt()V

    return-void
.end method

.method synthetic lambda$personalization$51$mx-jorge-despierta-MainActivity()V
    .locals 3

    .line 55
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pet"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->personalization()V

    return-void
.end method

.method synthetic lambda$petExportPrompt$43$mx-jorge-despierta-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 53
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string p2, "Exportar mascota a Despierta"

    const-string v0, "Quiero llevar mi mascota actual de Codex a la app Android Despierta. Busca mi mascota seleccionada y dame para descargar su hoja de sprites ORIGINAL completa, en PNG o WebP con transparencia. Despierta acepta hojas Codex v1 de 1536 \u00d7 1872 p\u00edxeles o v2 de 1536 \u00d7 2288 p\u00edxeles, de hasta 20 MB. Conserva todos los cuadros y su orden, especialmente la fila de salto (fila 5, \u00edndice 4; cinco cuadros de 192 \u00d7 208). No generes otra mascota, no la redibujes, no la ampl\u00edes ni entregues una captura, GIF o tira recortada. No cambies mi mascota seleccionada. Si tienes acceso al archivo original, entr\u00e9game un enlace de descarga. Si no tienes acceso, ind\u00edcamelo sin inventar un archivo."

    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "Prompt copiado"

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$phoneSettings$38$mx-jorge-despierta-MainActivity()V
    .locals 3

    .line 51
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$phoneSettings$39$mx-jorge-despierta-MainActivity()V
    .locals 2

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$phoneSettings$40$mx-jorge-despierta-MainActivity()V
    .locals 3

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$phoneSettings$41$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->fullScreenHelp()V

    return-void
.end method

.method synthetic lambda$phoneSettings$42$mx-jorge-despierta-MainActivity()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->lockedHelp()V

    return-void
.end method

.method synthetic lambda$pickTime$31$mx-jorge-despierta-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 1

    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 p1, 0x3b

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p1, "Usa una hora de 00:00 a 23:59"

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$pickTime$32$mx-jorge-despierta-MainActivity(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 45
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V

    return-void
.end method

.method synthetic lambda$root$1$mx-jorge-despierta-MainActivity(ZLandroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 0

    .line 10
    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lmx/jorge/despierta/MainActivity;->options(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string p1, "Personalizaci\u00f3n"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Configuraci\u00f3n del tel\u00e9fono"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Acerca de"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    :goto_1
    return-void
.end method

.method synthetic lambda$root$3$mx-jorge-despierta-MainActivity(Landroid/widget/LinearLayout;Landroid/widget/ScrollView;ZILandroid/view/Window;)V
    .locals 5

    .line 10
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v0, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    sub-int v1, v0, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-wide/16 v0, 0xb4

    if-eqz p3, :cond_1

    if-lez p4, :cond_1

    if-eq p2, p4, :cond_1

    filled-new-array {p4, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity;->panelResize:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->panelResize:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->panelResize:Landroid/animation/ValueAnimator;

    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->panelResize:Landroid/animation/ValueAnimator;

    new-instance p4, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda53;

    invoke-direct {p4, p5}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda53;-><init>(Landroid/view/Window;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->panelResize:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p5, v3, p2}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    if-nez p3, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 p3, 0xe

    invoke-virtual {p0, p3}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method synthetic lambda$root$4$mx-jorge-despierta-MainActivity(Landroid/widget/LinearLayout;ZILandroid/widget/ScrollView;)V
    .locals 8

    .line 10
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lmx/jorge/despierta/MainActivity;->BG:I

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmx/jorge/despierta/MainActivity;->shape(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_1

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity;->stage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {v7, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    if-nez p2, :cond_2

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    if-eqz p2, :cond_3

    move v0, p3

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v7, v1, v0}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x50

    invoke-virtual {v7, v0}, Landroid/view/Window;->setGravity(I)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;-><init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;ZILandroid/view/Window;)V

    invoke-virtual {p4, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method lockedHelp()V
    .locals 5

    .line 62
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget-wide v1, Lmx/jorge/despierta/TripService;->lastLocationAt:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "Sin lectura reciente"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    sget-wide v3, Lmx/jorge/despierta/TripService;->lastLocationAt:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Estado: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmx/jorge/despierta/TripService;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nServicio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lmx/jorge/despierta/TripService;->active:Z

    if-eqz v3, :cond_1

    const-string v3, "activo"

    goto :goto_1

    :cond_1
    const-string v3, "detenido"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u00daltima lectura GPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAhorro de bater\u00eda: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "activado"

    goto :goto_2

    :cond_2
    const-string v2, "desactivado"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nSin optimizaci\u00f3n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "s\u00ed"

    goto :goto_3

    :cond_3
    const-string v0, "no"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nEn Redmi revisa tambi\u00e9n Inicio autom\u00e1tico y bater\u00eda Sin restricciones. Mant\u00e9n visible la notificaci\u00f3n de vigilancia. Esta configuraci\u00f3n no garantiza por s\u00ed sola el aviso."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Pantalla apagada"

    invoke-virtual {v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Cerrar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda1;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Ajustar bater\u00eda"

    invoke-virtual {v0, v2, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method modeLabel(I)Ljava/lang/String;
    .locals 1

    .line 21
    if-nez p1, :cond_0

    const-string p1, "Solo vibraci\u00f3n"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "Sonido y vibraci\u00f3n"

    goto :goto_0

    :cond_1
    const-string p1, "Solo sonido"

    :goto_0
    return-object p1
.end method

.method newAlarm()V
    .locals 3

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    const-string v1, "Mi parada"

    invoke-virtual {p0, v0, v1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "days"

    invoke-virtual {p0, v1, v0}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "always"

    invoke-virtual {p0, v1, v0}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {p0, v2, v1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x59f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "until"

    invoke-virtual {p0, v2, v1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {p0, v2, v1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {p0, v2, v1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "enabled"

    invoke-virtual {p0, v1, v0}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->openMap()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 63
    const-string v0, "mode"

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x1e

    const/4 v2, -0x1

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->importPet(Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    const-string v1, "lat"

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    const-wide/16 v3, 0x0

    invoke-virtual {p3, v1, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "lon"

    invoke-virtual {p3, v1, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "placeName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x3e8

    const-string v3, "radius"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    :cond_4
    :goto_1
    const/16 v1, 0x14

    if-ne p1, v1, :cond_9

    if-ne p2, v2, :cond_9

    if-eqz p3, :cond_9

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const-string p2, "Audio elegido"

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v1, "audio"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "audioName"

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    move p3, p2

    :cond_8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmx/jorge/despierta/MainActivity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string p1, "No se pudo guardar permiso para ese archivo. Elige un audio local."

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 65
    const-string v0, "customize"

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    return-void

    :cond_0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    new-instance v0, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u00bfSalir sin guardar los cambios?"

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda30;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Salir"

    invoke-virtual {v0, v2, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Seguir editando"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "draft"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    iget-object p1, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->editor()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lmx/jorge/despierta/MainActivity;->visible:Z

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity;->uiTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lmx/jorge/despierta/MainActivity;->visible:Z

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity;->uiTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "draft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method openMap()V
    .locals 6

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmx/jorge/despierta/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v2, "lat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v3, "lon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const/16 v2, 0x3e8

    const-string v3, "radius"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lmx/jorge/despierta/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method options(Landroid/view/View;)V
    .locals 3

    .line 49
    const-string p1, "Ajustes"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmx/jorge/despierta/MainActivity;->root(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    new-instance p1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda3;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v0, "\u25c9"

    const-string v1, "Colores"

    const-string v2, "Paleta de la app"

    invoke-virtual {p0, v0, v1, v2, p1}, Lmx/jorge/despierta/MainActivity;->compactRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda4;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v1, "\u2661"

    const-string v2, "Mascota"

    invoke-virtual {p0, v1, v2, p1, v0}, Lmx/jorge/despierta/MainActivity;->compactRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance p1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda5;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v0, "\u2699"

    const-string v1, "Configuraci\u00f3n del tel\u00e9fono"

    const-string v2, "Permisos y bater\u00eda"

    invoke-virtual {p0, v0, v1, v2, p1}, Lmx/jorge/despierta/MainActivity;->compactRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance p1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda6;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v0, "\u24d8"

    const-string v1, "Acerca de"

    const-string v2, "Versi\u00f3n y cr\u00e9ditos"

    invoke-virtual {p0, v0, v1, v2, p1}, Lmx/jorge/despierta/MainActivity;->compactRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;
    invoke-static {p0, v0}, Lmx/jorge/despierta/AudioOutputSettings;->attach(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    invoke-static {p0, v0}, Lmx/jorge/despierta/JourneyHubActivity;->attach(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    return-void
.end method

.method permissions()Z
    .locals 8

    .line 46
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v2}, Lmx/jorge/despierta/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-lt v1, v3, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v7

    aput-object v5, v1, v4

    aput-object v2, v1, v6

    goto :goto_1

    :cond_2
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v7

    aput-object v5, v1, v4

    :goto_1
    invoke-virtual {p0, v1, v4}, Lmx/jorge/despierta/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    const-string v0, "Permite ubicaci\u00f3n precisa y notificaciones; despu\u00e9s repite la acci\u00f3n"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    return v7
.end method

.method personalization()V
    .locals 9

    .line 54
    const-string v0, "Personalizaci\u00f3n"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmx/jorge/despierta/MainActivity;->root(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity;->appearanceSection:Ljava/lang/String;

    const-string v3, "colors"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Colores"

    goto :goto_0

    :cond_0
    const-string v2, "Mascota"

    :goto_0
    const/16 v4, 0x17

    invoke-virtual {p0, v2, v4}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->appearanceSection:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lmx/jorge/despierta/Palette;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    move v2, v1

    :goto_1
    sget-object v3, Lmx/jorge/despierta/Palette;->IDS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lmx/jorge/despierta/Palette;->IDS:[Ljava/lang/String;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lmx/jorge/despierta/Palette;->NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lmx/jorge/despierta/Palette;->id:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "  \u2713"

    goto :goto_2

    :cond_1
    const-string v5, ""

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0, v3}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda23;-><init>(Lmx/jorge/despierta/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5, v1}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object v3

    sget-object v4, Lmx/jorge/despierta/Palette;->ACCENTS:[I

    aget v4, v4, v2

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {p0, v4, v6}, Lmx/jorge/despierta/MainActivity;->shape(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    const/16 v6, 0x18

    invoke-virtual {p0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {p0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {p0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {p0, v6}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v4, v1, v1, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    iget-object v4, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_2
    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda24;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Crear mi paleta"

    :goto_3
    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    return-void

    :cond_3
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0xa5

    invoke-virtual {p0, v4}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda25;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v3, "\u2661"

    const-string v4, "Actual"

    invoke-virtual {p0, v3, v4, v0, v2}, Lmx/jorge/despierta/MainActivity;->compactRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda26;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Elegir mascota"

    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda27;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Importar mascota de Codex"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda28;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "C\u00f3mo exportar desde Codex \u00b7 Copiar prompt"

    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda29;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Desactivar mascota"

    goto :goto_3
.end method

.method petExportPrompt()V
    .locals 3

    .line 53
    const-string v0, "Quiero llevar mi mascota actual de Codex a la app Android Despierta. Busca mi mascota seleccionada y dame para descargar su hoja de sprites ORIGINAL completa, en PNG o WebP con transparencia. Despierta acepta hojas Codex v1 de 1536 \u00d7 1872 p\u00edxeles o v2 de 1536 \u00d7 2288 p\u00edxeles, de hasta 20 MB. Conserva todos los cuadros y su orden, especialmente la fila de salto (fila 5, \u00edndice 4; cinco cuadros de 192 \u00d7 208). No generes otra mascota, no la redibujes, no la ampl\u00edes ni entregues una captura, GIF o tira recortada. No cambies mi mascota seleccionada. Si tienes acceso al archivo original, entr\u00e9game un enlace de descarga. Si no tienes acceso, ind\u00edcamelo sin inventar un archivo."

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v1, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Exporta tu mascota de Codex"

    invoke-virtual {v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    const-string v2, "Copia este mensaje y p\u00e9galo en Codex. Despu\u00e9s descarga la hoja e imp\u00f3rtala aqu\u00ed."

    invoke-virtual {v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmx/jorge/despierta/UiSheet$Builder;->setView(Landroid/view/View;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Cerrar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda19;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Copiar prompt"

    invoke-virtual {v0, v2, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method phoneSettings()V
    .locals 4

    .line 51
    const-string v0, "Configuraci\u00f3n del tel\u00e9fono"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmx/jorge/despierta/MainActivity;->root(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const-string v2, "Todos los accesos del sistema en un solo lugar"

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda57;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Permisos de la aplicaci\u00f3n"

    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda58;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Ubicaci\u00f3n del tel\u00e9fono"

    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda59;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda59;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Notificaciones"

    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda60;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda60;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Pantalla completa"

    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda61;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda61;-><init>(Lmx/jorge/despierta/MainActivity;)V

    const-string v2, "Bater\u00eda y pantalla apagada"

    invoke-virtual {p0, v2, v0, v1}, Lmx/jorge/despierta/MainActivity;->addButton(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method pickTime(Ljava/lang/String;)V
    .locals 12

    .line 45
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    filled-new-array {v3, v4}, [Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    aget-object v9, v5, v7

    invoke-static {p0, v9}, Lmx/jorge/despierta/UiSheet;->input(Landroid/content/Context;Landroid/widget/EditText;)V

    const/high16 v10, 0x42180000    # 38.0f

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextSize(F)V

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setInputType(I)V

    new-array v10, v10, [Landroid/text/InputFilter;

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v11, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "Hora, de 0 a 23"

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v2, "Minutos, de 0 a 59"

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%02d"

    invoke-static {v2, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x56

    invoke-virtual {p0, v2}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, " : "

    const/16 v5, 0x20

    invoke-virtual {p0, v0, v5}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {v0, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lmx/jorge/despierta/UiSheet$Builder;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/UiSheet$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "from"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Vigilar desde"

    goto :goto_1

    :cond_1
    const-string v2, "Vigilar hasta"

    :goto_1
    invoke-virtual {v0, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v2, "Formato de 24 horas"

    invoke-virtual {v0, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setView(Landroid/view/View;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, v3, v4}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda55;-><init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->validate(Ljava/util/function/BooleanSupplier;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    const-string v1, "Cancelar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object v0

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0, p1, v3, v4}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;-><init>(Lmx/jorge/despierta/MainActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const-string p1, "Listo"

    invoke-virtual {v0, p1, v1}, Lmx/jorge/despierta/UiSheet$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmx/jorge/despierta/UiSheet$Builder;->show()Landroid/app/Dialog;

    return-void
.end method

.method root(Ljava/lang/String;Z)Landroid/widget/LinearLayout;
    .locals 13

    .line 9
    new-instance v0, Lmx/jorge/despierta/Palette;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget v1, v0, Lmx/jorge/despierta/Palette;->bg:I

    iput v1, p0, Lmx/jorge/despierta/MainActivity;->BG:I

    iget v1, v0, Lmx/jorge/despierta/Palette;->fg:I

    iput v1, p0, Lmx/jorge/despierta/MainActivity;->FG:I

    iget v1, v0, Lmx/jorge/despierta/Palette;->muted:I

    iput v1, p0, Lmx/jorge/despierta/MainActivity;->MUTED:I

    iget v0, v0, Lmx/jorge/despierta/Palette;->accent:I

    iput v0, p0, Lmx/jorge/despierta/MainActivity;->ACCENT:I

    const-string v0, "Alarmas"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Personalizaci\u00f3n"

    if-eqz v0, :cond_0

    const-string v0, "home"

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "customize"

    goto :goto_0

    :cond_1
    const-string v0, "editor"

    :goto_0
    iput-object v0, p0, Lmx/jorge/despierta/MainActivity;->screen:Ljava/lang/String;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v3, p0, Lmx/jorge/despierta/MainActivity;->BG:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string v3, "Tu alarma"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "Ajustes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Configuraci\u00f3n del tel\u00e9fono"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Acerca de"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    if-eqz v5, :cond_5

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->stage:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v4

    :goto_4
    if-eqz v5, :cond_7

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->panelResize:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->panelResize:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->stage:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lmx/jorge/despierta/MainActivity;->editorPanel:Landroid/app/Dialog;

    :cond_8
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmx/jorge/despierta/MainActivity;->stage:Landroid/widget/FrameLayout;

    :goto_5
    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->stage:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-nez v1, :cond_9

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity;->stage:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/MainActivity;->setContentView(Landroid/view/View;)V

    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    const/16 v8, 0x18

    if-lt v3, v7, :cond_a

    new-instance v3, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestApplyInsets()V

    goto :goto_6

    :cond_a
    const/16 v3, 0xc

    invoke-virtual {v0, v4, v8, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 10
    :goto_6
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v9

    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {p0, v7}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {p0, v10}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v3, v9, v11, v12, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v9, 0x1c

    invoke-virtual {p0, p1, v9}, Lmx/jorge/despierta/MainActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v9

    const-string v10, "sans-serif-medium"

    invoke-static {v10, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_b

    const-string v9, "\u22ee"

    goto :goto_7

    :cond_b
    const-string v9, "\u2039"

    :goto_7
    new-instance v10, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v10, p0, p2, v3, p1}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda8;-><init>(Lmx/jorge/despierta/MainActivity;ZLandroid/widget/LinearLayout;Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10, v4}, Lmx/jorge/despierta/MainActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setMinimumHeight(I)V

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    const/high16 p2, 0x41e00000    # 28.0f

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextSize(F)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x2c

    invoke-virtual {p0, v9}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {p0, v9}, Lmx/jorge/despierta/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {p2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p2, v7, v2, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_c

    move v4, v11

    :cond_c
    if-eqz v1, :cond_d

    const/4 v12, 0x0

    :cond_d
    const/4 v2, -0x1

    invoke-direct {p2, v2, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_e

    iget-object p2, p0, Lmx/jorge/despierta/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda9;

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda9;-><init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/LinearLayout;ZILandroid/widget/ScrollView;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-object v0
.end method

.method saveAlarm()V
    .locals 2

    .line 40
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v1, "days"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Elige al menos un d\u00eda"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Elige tu destino primero"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->permissions()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-static {p0, v0}, Lmx/jorge/despierta/AlarmStore;->put(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->sync()V

    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->home()V

    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method shape(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 12
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method sync()V
    .locals 0
    invoke-static {p0}, Lmx/jorge/despierta/ScheduleController;->sync(Landroid/content/Context;)V
    return-void
.end method

.method testAlarm()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->permissions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmx/jorge/despierta/MainActivity;->alarmScreenReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmx/jorge/despierta/TripService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "alarm"

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity;->draft:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "Prueba en 15 segundos: bloquea ahora la pantalla. Det\u00e9n el aviso desde la notificaci\u00f3n."

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "No se pudo iniciar la prueba. Revisa permisos"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/MainActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method text(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 1

    .line 11
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lmx/jorge/despierta/MainActivity;->FG:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x4

    const/16 p2, 0x8

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method toast(Ljava/lang/String;)V
    .locals 1

    .line 68
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
