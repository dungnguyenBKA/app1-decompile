.class public Lxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvi<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lxi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxi;

    invoke-direct {v0}, Lxi;-><init>()V

    sput-object v0, Lxi;->a:Lxi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lvi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lvi<",
            "TZ;TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lxi;->a:Lxi;

    return-object v0
.end method


# virtual methods
.method public a(Lhe;Lcom/bumptech/glide/load/i;)Lhe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "TZ;>;",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lhe<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
