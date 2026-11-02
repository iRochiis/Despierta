.class public final synthetic Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MainActivity;

.field public final synthetic f$1:Lmx/jorge/despierta/PillSwitch;

.field public final synthetic f$2:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MainActivity;Lmx/jorge/despierta/PillSwitch;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;->f$0:Lmx/jorge/despierta/MainActivity;

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;->f$1:Lmx/jorge/despierta/PillSwitch;

    iput-object p3, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;->f$2:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;->f$0:Lmx/jorge/despierta/MainActivity;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;->f$1:Lmx/jorge/despierta/PillSwitch;

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda13;->f$2:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, p1, p2}, Lmx/jorge/despierta/MainActivity;->lambda$home$9$mx-jorge-despierta-MainActivity(Lmx/jorge/despierta/PillSwitch;Lorg/json/JSONObject;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
