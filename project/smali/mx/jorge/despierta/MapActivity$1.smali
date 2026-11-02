.class Lmx/jorge/despierta/MapActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmx/jorge/despierta/MapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmx/jorge/despierta/MapActivity;


# direct methods
.method constructor <init>(Lmx/jorge/despierta/MapActivity;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPageFinished$1$mx-jorge-despierta-MapActivity$1(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    iget-object p1, p1, Lmx/jorge/despierta/MapActivity;->web:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$shouldInterceptRequest$0$mx-jorge-despierta-MapActivity$1(Ljava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    iget-object v0, v0, Lmx/jorge/despierta/MapActivity;->web:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMapError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    .line 9
    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    iget-boolean p1, p1, Lmx/jorge/despierta/MapActivity;->initial:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lmx/jorge/despierta/MapActivity;->initial:Z

    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    iget-object p1, p1, Lmx/jorge/despierta/MapActivity;->web:Landroid/webkit/WebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyPalette("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance v0, Lmx/jorge/despierta/Palette;

    iget-object v1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-direct {v0, v1}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmx/jorge/despierta/Palette;->json()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lmx/jorge/despierta/MapActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MapActivity$1$$ExternalSyntheticLambda1;-><init>(Lmx/jorge/despierta/MapActivity$1;)V

    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    iget-object p1, p1, Lmx/jorge/despierta/MapActivity;->web:Landroid/webkit/WebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialRadius("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-virtual {v1}, Lmx/jorge/despierta/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "radius"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-virtual {p1}, Lmx/jorge/despierta/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "lat"

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p1

    iget-object v3, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-virtual {v3}, Lmx/jorge/despierta/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lon"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    iget-object v3, v3, Lmx/jorge/despierta/MapActivity;->web:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectPoint("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",\'Destino guardado\');map.setView(["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "],15)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-virtual {p1}, Lmx/jorge/despierta/MapActivity;->locate()V

    :goto_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 10

    .line 7
    const-string p1, "UTF-8"

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appassets.androidplatform.net"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/tiles/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-static {p1, p2}, Lmx/jorge/despierta/TileLoader;->load(Landroid/content/Context;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DespiertaMap"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    iget-object p2, p2, Lmx/jorge/despierta/MapActivity;->web:Landroid/webkit/WebView;

    new-instance v0, Lmx/jorge/despierta/MapActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lmx/jorge/despierta/MapActivity$1$$ExternalSyntheticLambda0;-><init>(Lmx/jorge/despierta/MapActivity$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Ljava/io/ByteArrayInputStream;

    new-array p2, v2, [B

    invoke-direct {v9, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "text/plain"

    const-string v5, "UTF-8"

    const/16 v6, 0x1f7

    const-string v7, "Unavailable"

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, ".js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "application/javascript"

    goto :goto_0

    :cond_2
    const-string v0, ".css"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "text/css"

    goto :goto_0

    :cond_3
    const-string v0, "text/html"

    :goto_0
    new-instance v1, Landroid/webkit/WebResourceResponse;

    iget-object v3, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-virtual {v3}, Lmx/jorge/despierta/MapActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception p2

    new-instance p2, Landroid/webkit/WebResourceResponse;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v2, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "text/plain"

    invoke-direct {p2, v1, p1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :cond_4
    return-object v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 8
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://www.openstreetmap.org/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://leafletjs.com/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$1;->this$0:Lmx/jorge/despierta/MapActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lmx/jorge/despierta/MapActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
