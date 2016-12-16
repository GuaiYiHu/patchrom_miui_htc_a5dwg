.class public Lcom/android/internal/telephony/A5RIL;
.super Lcom/android/internal/telephony/RIL;
.source "A5RIL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/A5RIL;->mQANElements:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/A5RIL;->mQANElements:I

    .line 31
    return-void
.end method


# virtual methods
.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string/jumbo v1, "getRadioCapability: returning static radio capability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/A5RIL;->riljLog(Ljava/lang/String;)V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/telephony/A5RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .line 41
    .local v0, "ret":Ljava/lang/Object;
    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 37
    .end local v0    # "ret":Ljava/lang/Object;
    :cond_0
    return-void
.end method
