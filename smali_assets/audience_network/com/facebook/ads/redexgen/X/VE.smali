.class public final Lcom/facebook/ads/redexgen/X/VE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Va;->A0T()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Va;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Va;)V
    .locals 0

    .line 56339
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/Va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 56340
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/Va;

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
