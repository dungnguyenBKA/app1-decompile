.class public final synthetic Lcom/google/billingclient/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje0;


# instance fields
.field public final synthetic a:Lcom/google/billingclient/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/billingclient/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/billingclient/c;->a:Lcom/google/billingclient/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/billingclient/c;->a:Lcom/google/billingclient/g;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, p1}, Lcom/google/billingclient/g;->r(Landroid/util/Pair;)V

    return-void
.end method
