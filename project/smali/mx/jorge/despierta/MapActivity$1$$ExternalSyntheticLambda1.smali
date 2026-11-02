.class public final synthetic Lmx/jorge/despierta/MapActivity$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MapActivity$1;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MapActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MapActivity$1$$ExternalSyntheticLambda1;->f$0:Lmx/jorge/despierta/MapActivity$1;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MapActivity$1$$ExternalSyntheticLambda1;->f$0:Lmx/jorge/despierta/MapActivity$1;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lmx/jorge/despierta/MapActivity$1;->lambda$onPageFinished$1$mx-jorge-despierta-MapActivity$1(Ljava/lang/String;)V

    return-void
.end method
