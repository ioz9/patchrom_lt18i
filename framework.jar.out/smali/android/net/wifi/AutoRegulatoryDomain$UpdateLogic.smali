.class abstract Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
.super Landroid/os/Handler;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AutoRegulatoryDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UpdateLogic"
.end annotation


# static fields
.field private static final ACTION_HYSTERESIS_TIMER:Ljava/lang/String; = "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

.field protected static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "US"

.field public static final EVENT_HYSTERESIS_ALARM:I = 0x0

.field public static final EVENT_START:I = 0x2

.field public static final EVENT_STOP:I = 0x3

.field public static final EVENT_UPDATE:I = 0x1

.field private static final UPDATE_HYSTERESIS_TIME:I = 0x1b7740

.field protected static final UPDATE_RESULT_START_TIMER:I = 0x0

.field protected static final UPDATE_RESULT_UPDATE_DONE:I = 0x1


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mHysteresisAlarmManager:Landroid/app/AlarmManager;

.field private final mHysteresisIntent:Landroid/app/PendingIntent;

.field private mHysteresisTimerStarted:Z

.field protected mLastSetCountryCode:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStarted:Z

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field final synthetic this$0:Landroid/net/wifi/AutoRegulatoryDomain;


# direct methods
.method public constructor <init>(Landroid/net/wifi/AutoRegulatoryDomain;Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "wifiStateMachine"

    .prologue
    const/4 v3, 0x0

    .line 116
    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->this$0:Landroid/net/wifi/AutoRegulatoryDomain;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 96
    iput-boolean v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    .line 97
    iput-boolean v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    .line 102
    const-string v1, "US"

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    .line 104
    new-instance v1, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;-><init>(Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;)V

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 121
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 123
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v0, hysteresisIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    .line 128
    return-void
.end method

.method private startHysteresisTimer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 212
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    if-nez v2, :cond_0

    .line 213
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 214
    const-string v2, "AutoRegulatoryDomain"

    const-string v3, "Starting hysteresis timer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long v0, v2, v4

    .line 216
    .local v0, timeout:J
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 217
    iput-boolean v6, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    .line 219
    .end local v0           #timeout:J
    :cond_0
    return-void
.end method

.method private stopHysteresisTimer()V
    .locals 2

    .prologue
    .line 222
    iget-boolean v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "AutoRegulatoryDomain"

    const-string v1, "Stopping hysteresis timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    .line 227
    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->doUpdate(Z)I

    move-result v0

    .line 198
    .local v0, updateResult:I
    packed-switch v0, :pswitch_data_0

    .line 206
    const-string v1, "AutoRegulatoryDomain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdate returned an unexpected result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 200
    :pswitch_0
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->startHysteresisTimer()V

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->stopHysteresisTimer()V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract doUpdate(Z)I
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, msgHandled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 178
    const-string v3, "AutoRegulatoryDomain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cannot be handled in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "started"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state. Message discarded!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    return-void

    .line 135
    :pswitch_0
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-nez v2, :cond_0

    .line 137
    invoke-direct {p0, v4}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->update(Z)V

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iput-boolean v4, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    .line 145
    const/4 v1, 0x1

    .line 146
    goto :goto_0

    .line 149
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :pswitch_1
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-eqz v2, :cond_0

    .line 152
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->stopHysteresisTimer()V

    .line 153
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    iput-boolean v5, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    .line 156
    const/4 v1, 0x1

    goto :goto_0

    .line 160
    :pswitch_2
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-eqz v2, :cond_0

    .line 161
    invoke-direct {p0, v5}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->update(Z)V

    .line 162
    const/4 v1, 0x1

    goto :goto_0

    .line 166
    :pswitch_3
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-eqz v2, :cond_0

    .line 169
    invoke-direct {p0, v4}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->update(Z)V

    .line 170
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    :cond_2
    const-string/jumbo v2, "stopped"

    goto :goto_1

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .parameter "countryCode"
    .parameter "force"

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 185
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 186
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 187
    const-string v0, "AutoRegulatoryDomain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regulatory domain changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    .line 191
    :cond_1
    return-void
.end method
