.class public final synthetic Lcom/google/billingclient/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje0;


# static fields
.field public static final synthetic a:Lcom/google/billingclient/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/billingclient/e;

    invoke-direct {v0}, Lcom/google/billingclient/e;-><init>()V

    sput-object v0, Lcom/google/billingclient/e;->a:Lcom/google/billingclient/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    sget v0, Lcom/google/billingclient/g;->h:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInAppPurchases onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BillingManager"

    invoke-static {v0, p1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
