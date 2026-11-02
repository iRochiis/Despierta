.class public final synthetic Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/TripService;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/TripService;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda0;->f$0:Lmx/jorge/despierta/TripService;

    iput-object p2, p0, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda0;->f$0:Lmx/jorge/despierta/TripService;

    iget-object v1, p0, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/TripService;->lambda$onStartCommand$0$mx-jorge-despierta-TripService(Lorg/json/JSONObject;)V

    return-void
.end method
