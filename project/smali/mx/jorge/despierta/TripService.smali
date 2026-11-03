.class public Lmx/jorge/despierta/TripService;
.super Landroid/app/Service;
.source "TripService.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static volatile active:Z

.field public static volatile alarmDestination:Ljava/lang/String;

.field public static volatile alarmIsTest:Z

.field public static volatile alarmIsWarning:Z

.field public static volatile alarmMessage:Ljava/lang/String;

.field public static volatile lastAlertAt:J

.field public static volatile lastLocationAt:J

.field public static volatile ringing:Z

.field public static volatile status:Ljava/lang/String;


# instance fields
.field alarms:Lorg/json/JSONArray;

.field alertLock:Landroid/os/PowerManager$WakeLock;

.field alertVibration:Z

.field delayedTest:Ljava/lang/Runnable;

.field fault:Z

.field h:Landroid/os/Handler;

.field lastFault:Ljava/lang/String;

.field lastFix:J

.field lm:Landroid/location/LocationManager;

.field lock:Landroid/os/PowerManager$WakeLock;

.field name:Ljava/lang/String;

.field player:Landroid/media/MediaPlayer;

.field scheduledWake:J

.field testing:Z

.field final tick:Ljava/lang/Runnable;

.field tracking:Z

.field vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4
    const-string v0, ""

    sput-object v0, Lmx/jorge/despierta/TripService;->alarmMessage:Ljava/lang/String;

    sput-object v0, Lmx/jorge/despierta/TripService;->alarmDestination:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lmx/jorge/despierta/TripService;->alarmIsWarning:Z

    sput-boolean v0, Lmx/jorge/despierta/TripService;->alarmIsTest:Z

    .line 5
    const-string v1, "Vigilancia detenida"

    sput-object v1, Lmx/jorge/despierta/TripService;->status:Ljava/lang/String;

    sput-boolean v0, Lmx/jorge/despierta/TripService;->active:Z

    sput-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lmx/jorge/despierta/TripService;->lastLocationAt:J

    sput-wide v0, Lmx/jorge/despierta/TripService;->lastAlertAt:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmx/jorge/despierta/TripService;->alertVibration:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmx/jorge/despierta/TripService;->h:Landroid/os/Handler;

    iput-boolean v0, p0, Lmx/jorge/despierta/TripService;->tracking:Z

    iput-boolean v0, p0, Lmx/jorge/despierta/TripService;->testing:Z

    iput-boolean v0, p0, Lmx/jorge/despierta/TripService;->fault:Z

    const-string v0, "Alarmas"

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->lastFault:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmx/jorge/despierta/TripService;->scheduledWake:J

    .line 6
    new-instance v0, Lmx/jorge/despierta/TripService$1;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/TripService$1;-><init>(Lmx/jorge/despierta/TripService;)V

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$play$1(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 27
    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method alarm(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 4

    # Signal failures are service status, never arrival alarms.
    # Return before selecting a repeating pattern, taking a wake lock,
    # changing ringing, promoting media playback or showing full screen UI.
    if-eqz p3, :arrival_only
    invoke-virtual {p0, p2}, Lmx/jorge/despierta/TripService;->update(Ljava/lang/String;)V
    return-void

    :arrival_only
    # Arrival is already confirmed; stop location acquisition while ringing.
    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->stopTracking()V

    invoke-static {p1}, Lmx/jorge/despierta/PatternPlayer;->select(Lorg/json/JSONObject;)V
    invoke-static {p0, p3}, Lmx/jorge/despierta/JourneyEngine;->alert(Landroid/content/Context;Z)V

    .line 21
    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->holdAlert()V

    sput-object p2, Lmx/jorge/despierta/TripService;->alarmMessage:Ljava/lang/String;

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->name:Ljava/lang/String;

    sput-object v0, Lmx/jorge/despierta/TripService;->alarmDestination:Ljava/lang/String;

    sput-boolean p3, Lmx/jorge/despierta/TripService;->alarmIsWarning:Z

    iget-boolean v0, p0, Lmx/jorge/despierta/TripService;->testing:Z

    sput-boolean v0, Lmx/jorge/despierta/TripService;->alarmIsTest:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmx/jorge/despierta/TripService;->lastAlertAt:J

    const/4 v0, 0x1

    sput-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    invoke-virtual {p0, p2, v0}, Lmx/jorge/despierta/TripService;->promote(Ljava/lang/String;Z)V

    iput-boolean p3, p0, Lmx/jorge/despierta/TripService;->fault:Z

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "mode"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    if-nez p3, :cond_3

    const/4 p3, 0x2

    if-eq v2, p3, :cond_1

    move p3, v0

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    const-string v3, "vibration"

    invoke-virtual {p1, v3, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    iput-boolean v0, p0, Lmx/jorge/despierta/TripService;->alertVibration:Z

    iget-boolean p3, p0, Lmx/jorge/despierta/TripService;->alertVibration:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->vibrateAlarm()V

    :cond_4
    if-eqz v2, :cond_5

    const-string p3, "audio"

    const-string v0, ""

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lmx/jorge/despierta/TripService;->play(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {p0, p2}, Lmx/jorge/despierta/TripService;->update(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmx/jorge/despierta/TripService;->publishAlarm(Ljava/lang/String;)V

    return-void
.end method

.method alarmScreen()Landroid/app/PendingIntent;
    .locals 4

    .line 22
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmx/jorge/despierta/AlarmActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xc000000

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/16 v3, 0x1e

    invoke-static {p0, v3, v1, v2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method anyEnabled()Z
    .locals 4

    .line 12
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lmx/jorge/despierta/TripService;->alarms:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lmx/jorge/despierta/TripService;->alarms:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method holdAlert()V
    .locals 3

    .line 24
    iget-object v0, p0, Lmx/jorge/despierta/TripService;->alertLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "Despierta:aviso"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->alertLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lmx/jorge/despierta/TripService;->alertLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->alertLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x2932e00

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onStartCommand$0$mx-jorge-despierta-TripService(Lorg/json/JSONObject;)V
    .locals 2

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->delayedTest:Ljava/lang/Runnable;

    const-string v0, "Prueba con pantalla bloqueada \u00b7 Ya despert\u00e9 para detener"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmx/jorge/despierta/TripService;->alarm(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$play$2$mx-jorge-despierta-TripService(ZLandroid/media/MediaPlayer;II)Z
    .locals 1

    .line 27
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V

    const/4 p2, 0x0

    iput-object p2, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string p1, ""

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/TripService;->play(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmx/jorge/despierta/TripService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->vibrator:Landroid/os/Vibrator;

    const/4 p3, 0x3

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p3

    new-instance p4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_1
    const-string p1, "No se pudo reproducir audio. Avisando con vibraci\u00f3n"

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/TripService;->update(Ljava/lang/String;)V

    :goto_0
    return p2

    nop

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x1f4
    .end array-data
.end method

.method notification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmx/jorge/despierta/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lmx/jorge/despierta/TripService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "DISMISS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    const-string v4, "trip"

    invoke-direct {v2, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    sget-boolean v4, Lmx/jorge/despierta/TripService;->ringing:Z

    if-eqz v4, :cond_0

    const-string v4, "alarm"

    goto :goto_0

    :cond_0
    const-string v4, "service"

    :goto_0
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v4, 0x108002a

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Despierta \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmx/jorge/despierta/TripService;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/Notification$Action$Builder;

    const/4 v2, 0x0

    const-string v3, "Ya despert\u00e9 / Detener prueba"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 29
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 6

    .line 7
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->lm:Landroid/location/LocationManager;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->vibrator:Landroid/os/Vibrator;

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Vigilancia de paradas"

    const/4 v2, 0x2

    const-string v3, "trip"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v3, "Avisos de llegada"

    const/4 v4, 0x4

    const-string v5, "arrival_v7"

    invoke-direct {v0, v5, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "Alarma persistente de llegada; sonido y vibraci\u00f3n los controla tu elecci\u00f3n"

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-static {p0}, Lmx/jorge/despierta/JourneyEngine;->begin(Lmx/jorge/despierta/TripService;)V
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {p0}, Lmx/jorge/despierta/JourneyEngine;->end(Lmx/jorge/despierta/TripService;)V

    .line 30
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmx/jorge/despierta/TripService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "RELOAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xc000000

    const/4 v3, 0x7

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->stopTracking()V

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->silence()V

    const/4 v0, 0x0

    sput-boolean v0, Lmx/jorge/despierta/TripService;->active:Z

    invoke-static {p0}, Lmx/jorge/despierta/ScheduleController;->describe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmx/jorge/despierta/TripService;->status:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->stopForeground(I)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    invoke-static {p0, p1}, Lmx/jorge/despierta/JourneyEngine;->onLocation(Lmx/jorge/despierta/TripService;Landroid/location/Location;)V
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-boolean v0, p0, Lmx/jorge/despierta/TripService;->tracking:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-nez v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "GPS desactivado. Revisa tu viaje"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lmx/jorge/despierta/TripService;->alarm(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 29
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    invoke-static {p0, p1}, Lmx/jorge/despierta/JourneyEngine;->dismissed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 10
    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->stopSelf()V

    return p2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DISMISS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->silence()V

    iput-boolean v1, p0, Lmx/jorge/despierta/TripService;->testing:Z

    const-string p1, "Alarmas"

    iput-object p1, p0, Lmx/jorge/despierta/TripService;->name:Ljava/lang/String;

    invoke-static {p0}, Lmx/jorge/despierta/AlarmStore;->load(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lmx/jorge/despierta/TripService;->alarms:Lorg/json/JSONArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmx/jorge/despierta/TripService;->lastFix:J

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->refreshWindow()V

    return p2

    .line 11
    :cond_1
    :try_start_0
    sget-boolean v0, Lmx/jorge/despierta/TripService;->active:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "TEST"

    if-nez v0, :cond_2

    :try_start_1
    const-string v0, "Preparando vigilancia\u2026"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, v0, v4}, Lmx/jorge/despierta/TripService;->promote(Ljava/lang/String;Z)V

    sput-boolean v2, Lmx/jorge/despierta/TripService;->active:Z

    invoke-static {p0}, Lmx/jorge/despierta/AlarmStore;->load(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->alarms:Lorg/json/JSONArray;

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->h:Landroid/os/Handler;

    iget-object v4, p0, Lmx/jorge/despierta/TripService;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iput-boolean v2, p0, Lmx/jorge/despierta/TripService;->testing:Z

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->silence()V

    new-instance p3, Lorg/json/JSONObject;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Prueba bloqueada"

    iput-object p1, p0, Lmx/jorge/despierta/TripService;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->holdAlert()V

    const-string p1, "Prueba en 15 segundos \u00b7 bloquea ahora la pantalla"

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/TripService;->update(Ljava/lang/String;)V

    new-instance p1, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda0;-><init>(Lmx/jorge/despierta/TripService;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lmx/jorge/despierta/TripService;->delayedTest:Ljava/lang/Runnable;

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->h:Landroid/os/Handler;

    iget-object p3, p0, Lmx/jorge/despierta/TripService;->delayedTest:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lmx/jorge/despierta/TripService;->testing:Z

    if-nez p1, :cond_4

    const-string p1, "Vigilancia activa"

    invoke-virtual {p0, p1, v1}, Lmx/jorge/despierta/TripService;->promote(Ljava/lang/String;Z)V

    :cond_4
    invoke-static {p0}, Lmx/jorge/despierta/AlarmStore;->load(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lmx/jorge/despierta/TripService;->alarms:Lorg/json/JSONArray;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmx/jorge/despierta/TripService;->scheduledWake:J

    iget-boolean p1, p0, Lmx/jorge/despierta/TripService;->testing:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->refreshWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, "No se pudo iniciar. Revisa permisos y ubicaci\u00f3n"

    sput-object p1, Lmx/jorge/despierta/TripService;->status:Ljava/lang/String;

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->stopSelf()V

    :cond_5
    :goto_0
    return p2
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 29
    return-void
.end method

.method play(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p0}, Lmx/jorge/despierta/AudioSafety;->allow(Lmx/jorge/despierta/TripService;)Z
    move-result v0
    if-nez v0, :audio_allowed
    return-void
    :audio_allowed

    .line 27
    const/4 v0, 0x4

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    iget-object v2, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-static {p0}, Lmx/jorge/despierta/AudioOutputSettings;->usage(Landroid/content/Context;)I
    move-result v0
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    :cond_1
    iget-object v2, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda2;-><init>(Lmx/jorge/despierta/TripService;Z)V

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    invoke-static {p0, p1}, Lmx/jorge/despierta/AudioSafety;->configure(Lmx/jorge/despierta/TripService;Landroid/media/MediaPlayer;)V
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    :cond_2
    if-nez p2, :cond_3

    const-string p1, ""

    invoke-virtual {p0, p1, v1}, Lmx/jorge/despierta/TripService;->play(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmx/jorge/despierta/TripService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmx/jorge/despierta/TripService;->vibrator:Landroid/os/Vibrator;

    const/4 p2, 0x3

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p2

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x1f4
    .end array-data
.end method

.method promote(Ljava/lang/String;Z)V
    .locals 3

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lmx/jorge/despierta/TripService;->tracking:Z

    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    invoke-virtual {p0, p1}, Lmx/jorge/despierta/TripService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0}, Lmx/jorge/despierta/TripService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lmx/jorge/despierta/TripService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lmx/jorge/despierta/TripService;->startForeground(ILandroid/app/Notification;)V

    :goto_1
    return-void
.end method

.method publishAlarm(Ljava/lang/String;)V
    .locals 6

    .line 23
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "arrival_v7"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x108002a

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget-boolean v2, Lmx/jorge/despierta/TripService;->alarmIsWarning:Z

    if-eqz v2, :cond_0

    const-string v2, "Revisa tu viaje"

    goto :goto_0

    :cond_0
    const-string v2, "\u00a1Ya casi llegas!"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->alarmScreen()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lmx/jorge/despierta/TripService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "DISMISS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0xc000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Action$Builder;

    const/4 v4, 0x0

    const-string v5, "Ya despert\u00e9"

    invoke-direct {v3, v4, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->alarmScreen()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    :cond_2
    const/16 v1, 0x2a

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-boolean p1, Lmx/jorge/despierta/MainActivity;->visible:Z

    if-eqz p1, :cond_3

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lmx/jorge/despierta/AlarmActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/TripService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :cond_3
    :goto_1
    return-void
.end method

.method ready(Lorg/json/JSONObject;Ljava/util/Calendar;)Z
    .locals 1

    .line 13
    invoke-static {p1, p2}, Lmx/jorge/despierta/AlarmStore;->eligible(Lorg/json/JSONObject;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lastFired"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lmx/jorge/despierta/AlarmStore;->windowKey(Lorg/json/JSONObject;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method refreshWindowOriginal()V
    .locals 11

    .line 14
    iget-object v0, p0, Lmx/jorge/despierta/TripService;->alarms:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lmx/jorge/despierta/TripService;->testing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->anyEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->stopSelf()V

    return-void

    :cond_2
    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lmx/jorge/despierta/TripService;->alarms:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lmx/jorge/despierta/TripService;->alarms:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lmx/jorge/despierta/TripService;->ready(Lorg/json/JSONObject;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_5
    if-eqz v2, :cond_7

    iget-boolean v1, p0, Lmx/jorge/despierta/TripService;->tracking:Z

    if-nez v1, :cond_7

    :try_start_0
    iput-boolean v4, p0, Lmx/jorge/despierta/TripService;->tracking:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lmx/jorge/despierta/TripService;->lastFix:J

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v3, "Despierta:viaje"

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lmx/jorge/despierta/TripService;->lock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lmx/jorge/despierta/TripService;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lmx/jorge/despierta/TripService;->lm:Landroid/location/LocationManager;

    const-string v6, "gps"

    const-wide/16 v7, 0xbb8

    const/4 v9, 0x0

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v1, p0, Lmx/jorge/despierta/TripService;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v5, p0, Lmx/jorge/despierta/TripService;->lm:Landroid/location/LocationManager;

    const-string v6, "network"

    const-wide/16 v7, 0x1388

    const/4 v9, 0x0

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_6
    const-string v1, "Buscando ubicaci\u00f3n precisa\u2026"

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/TripService;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->stopTracking()V

    const-string v1, "No se pudo acceder al GPS. Revisa permisos"

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/TripService;->update(Ljava/lang/String;)V

    .line 16
    :cond_7
    :goto_1
    if-nez v2, :cond_8

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->stopTracking()V

    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->scheduleWake()V

    const-string v0, "Activa \u00b7 esperando el pr\u00f3ximo horario"

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->update(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lmx/jorge/despierta/TripService;->lastFix:J

    sub-long/2addr v1, v5

    const-wide/32 v5, 0x15f90

    cmp-long v1, v1, v5

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmx/jorge/despierta/TripService;->lastFault:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iput-object v0, p0, Lmx/jorge/despierta/TripService;->lastFault:Ljava/lang/String;

    iput-boolean v4, p0, Lmx/jorge/despierta/TripService;->fault:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Sin ubicaci\u00f3n fiable. Revisa la se\u00f1al GPS"

    invoke-virtual {p0, v0, v1, v4}, Lmx/jorge/despierta/TripService;->alarm(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 17
    :cond_9
    :goto_2
    return-void
.end method

.method scheduleWake()V
    .locals 0
    invoke-static {p0}, Lmx/jorge/despierta/ScheduleController;->plan(Landroid/content/Context;)V
    return-void
.end method

.method silence()V
    .locals 3

    .line 28
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->delayedTest:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->h:Landroid/os/Handler;

    iget-object v2, p0, Lmx/jorge/despierta/TripService;->delayedTest:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lmx/jorge/despierta/TripService;->delayedTest:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    iput-boolean v0, p0, Lmx/jorge/despierta/TripService;->alertVibration:Z

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->alertLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->alertLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->alertLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v0, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lmx/jorge/despierta/TripService;->player:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method

.method stopTracking()V
    .locals 1

    .line 19
    iget-object v0, p0, Lmx/jorge/despierta/TripService;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmx/jorge/despierta/TripService;->tracking:Z

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->lock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/TripService;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 2

    .line 9
    sput-object p1, Lmx/jorge/despierta/TripService;->status:Ljava/lang/String;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/TripService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/TripService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method vibrateAlarm()V
    .locals 0
    invoke-static {p0}, Lmx/jorge/despierta/PatternPlayer;->play(Landroid/content/Context;)V
    return-void
.end method

.method refreshWindow()V
    .locals 1
    invoke-virtual {p0}, Lmx/jorge/despierta/TripService;->refreshWindowOriginal()V
    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z
    if-nez v0, :done
    iget-boolean v0, p0, Lmx/jorge/despierta/TripService;->testing:Z
    if-nez v0, :done
    invoke-static {p0}, Lmx/jorge/despierta/ScheduleController;->afterRefresh(Landroid/app/Service;)V
    :done
    return-void
.end method

