.class public final Lcom/facebook/ads/redexgen/X/Mu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aY;->A0K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Mn;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/aY;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mu;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aY;Lcom/facebook/ads/redexgen/X/Mn;)V
    .locals 0

    .line 44458
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mu;->A01:Lcom/facebook/ads/redexgen/X/aY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mu;->A00:Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Oq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EvGClE7if1wWI664DgGuGJMVxIj5MmF8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WEj5b"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZnP49bXAxkKFgNqp8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Y2wBPaH57L9Gttlp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AMrJJ9So27w7KiYttAq3AFMsZzT3RVfH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8te6O8WI5P7ERWBX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5xXH0hCktOzz8vKUWRcLVJoUpm5lTBxe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Mu;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 44459
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mu;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Mu;->A00:Lcom/facebook/ads/redexgen/X/Mn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mn;->A01()V

    .line 44460
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Mu;->A01:Lcom/facebook/ads/redexgen/X/aY;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Mj;->A0A:Lcom/facebook/ads/redexgen/X/Ml;

    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ml;->AAp(Lcom/facebook/ads/redexgen/X/29;)V

    .line 44461
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Mu;
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mu;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Mu;->A02:[Ljava/lang/String;

    const-string v1, "snOHg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
