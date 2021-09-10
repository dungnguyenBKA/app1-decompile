.class public final synthetic Lo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lo6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo6;

    invoke-direct {v0}, Lo6;-><init>()V

    sput-object v0, Lo6;->b:Lo6;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lp6;->b:Z

    return-void
.end method
