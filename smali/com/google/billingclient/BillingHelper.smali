.class public Lcom/google/billingclient/BillingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/Printer;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/billingclient/BillingHelper;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/billingclient/BillingHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/android/billingclient/api/g;)V
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null BillingResult"

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "OK"

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, "Unknown"

    goto :goto_0

    :pswitch_1
    const-string v1, "ITEM_NOT_OWNED"

    goto :goto_0

    :pswitch_2
    const-string v1, "ITEM_ALREADY_OWNED"

    goto :goto_0

    :pswitch_3
    const-string v1, "ERROR"

    goto :goto_0

    :pswitch_4
    const-string v1, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_5
    const-string v1, "ITEM_UNAVAILABLE"

    goto :goto_0

    :pswitch_6
    const-string v1, "BILLING_UNAVAILABLE"

    goto :goto_0

    :pswitch_7
    const-string v1, "SERVICE_UNAVAILABLE"

    goto :goto_0

    :pswitch_8
    const-string v1, "USER_CANCELED"

    goto :goto_0

    :pswitch_9
    const-string v1, "SERVICE_DISCONNECTED"

    goto :goto_0

    :pswitch_a
    const-string v1, "FEATURE_NOT_SUPPORTED"

    .line 4
    :goto_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const-string p0, "%d %s %s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v0, "BillingHelper"

    .line 5
    invoke-static {v0, p0}, Lcom/google/billingclient/BillingHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/billingclient/BillingHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/billingclient/BillingHelper;->a:Landroid/util/Printer;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-->"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPrinter(Landroid/util/Printer;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sput-object p0, Lcom/google/billingclient/BillingHelper;->a:Landroid/util/Printer;

    return-void
.end method
