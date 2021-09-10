.class public final Loe0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loe0$d;,
        Loe0$b;,
        Loe0$a;,
        Loe0$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Runnable;

.field public static final b:Lie0;

.field static final c:Lje0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lje0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lje0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lje0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Loe0$c;

    invoke-direct {v0}, Loe0$c;-><init>()V

    sput-object v0, Loe0;->a:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Loe0$a;

    invoke-direct {v0}, Loe0$a;-><init>()V

    sput-object v0, Loe0;->b:Lie0;

    .line 3
    new-instance v0, Loe0$b;

    invoke-direct {v0}, Loe0$b;-><init>()V

    sput-object v0, Loe0;->c:Lje0;

    .line 4
    new-instance v0, Loe0$d;

    invoke-direct {v0}, Loe0$d;-><init>()V

    sput-object v0, Loe0;->d:Lje0;

    return-void
.end method

.method public static a()Lje0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lje0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Loe0;->c:Lje0;

    return-object v0
.end method
